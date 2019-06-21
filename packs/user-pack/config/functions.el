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

;;; functions.el ends here
