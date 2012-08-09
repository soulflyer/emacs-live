(set-keyboard-coding-system nil)

(server-mode 1)
;;(global-visual-line-mode t)
;;(require 'mouse)
;;(xterm-mouse-mode t)
;;(defun track-mouse (e))
;;(setq mouse-sel-mode t)

;;(load-dotfile "lib/iy-go-to-char.el")
;;Fix cut and paste from kill-ring to system clipboard
;;(load-dotfile (concat "lib/pbcopy.el"))
;;(require 'pbcopy)
;;(turn-on-pbcopy)

;;(require 'popup)
;;(require 'pos-tip)
;;(require 'popup-kill-ring)

(setq same-window-regexps '("."))

(defun no-split-window ()
  (interactive)
    nil)
(setq split-window-preferred-function 'no-split-window)

(setq-default  cursor-type 'bar)
(setq show-paren-style (quote expression))


;;stop emacs from shitting all over my file system
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

;;Keep a recent files list
(recentf-mode 1)

(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive
   (if mark-active
       (list (region-beginning) (region-end))
       (message "Copied line")
       (list (line-beginning-position) (line-beginning-position 2)))))

;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))
