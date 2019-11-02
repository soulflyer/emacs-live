;;; package --- Summary
;;; Commentary:
;;; Code:

(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun v-resize (key)
  "Interactively resize the window.  KEY."
  (interactive "cHit +/- to enlarge/shrink")
  (cond
   ((eq key (string-to-char "+"))
    (enlarge-window 1)
    (call-interactively 'v-resize))
   ((eq key (string-to-char "-"))
    (enlarge-window -1)
    (call-interactively 'v-resize))
   (t (push key unread-command-events))))

(defun read-hana-environment (config-file)
  ;; This will source the .rc file and add any environment variables there to process-environment.
  ;; It's intended purpose is switching hana configs without having to restart the emacs daemon.
  ;; It WON'T add any env vars that contain spaces in the value. This means that D42ONE_GC_OPTS
  ;; won't get added, but that is unlikely to be of use from within emacs.
  (with-temp-buffer
    (call-process "bash" nil t nil "-c"
                  (concat "source " config-file "; env | grep 'D42' | grep -v ' '"))
    (goto-char (point-min))
    (while (not (eobp))
      (let ((current-line (split-string (buffer-substring (point) (line-end-position)) "=")))
        (setenv (first current-line) (second current-line)))
      (forward-line 1))))

(defun read-hana ()
  (read-hana-environment "/Users/iain/Code/Flexiana/Data-42/d42one-release-conf/d42one-conf.d/d42one.rc"))
;;; functions.el ends here
