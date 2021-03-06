;;; package --- Summary
;;; Commentary:
;;; Code:
(message "loading same-window.el")

(defun no-split-window ()
  "Documentation."
  (interactive)
  nil)

;; Don't do this or undo-tree becomes useless
;; Ok, do it but make sure popwin takes care of the undo-tree window
;; (setq split-window-preferred-function 'no-split-window)
(setq split-window-preferred-function 'split-window-sensibly)
(setq split-width-threshold 100)

(setq org-link-frame-setup '((file . find-file)))
;; (setq ns-pop-up-frames nil)
(setq pop-up-windows nil)

;;; same-window.el ends here
