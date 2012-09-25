(require 'iy-go-to-char)
;;(setq same-window-regexps '("."))
;;(setq same-window-regexps nil)
;;(add-to-list 'same-window-regexps ".")
(add-to-list 'same-window-regexps "\*Help\*")
(add-to-list 'same-window-regexps "\*rake\*")
(add-to-list 'same-window-regexps "\*Apropos\*")
(add-to-list 'same-window-regexps "\*compilation\*")
(add-to-list 'same-window-regexps "\*ruby\*")
(add-to-list 'same-window-regexps "\*rails\*")
;;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;;(setq-default  cursor-type 'bar)
(setq show-paren-style (quote expression))
(delete-selection-mode 1)

(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
(require 'scss-mode)

;;This stuff needed by xiki which looks cool but doesn't work with command line emacs yet
;;(add-to-list 'load-path "/Users/iain/.rvm/rubies/ruby-1.9.3-p194/share/emacs/site-lisp")
;;(require 'el4r)
;;(el4r-boot)

(live-add-pack-lib "rinari")
(require 'rinari)

(require 'inf-ruby)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(live-add-pack-lib "expand-region.el")
(require 'expand-region)

(live-add-pack-lib "mark-multiple")
(require 'rename-sgml-tag)
(require 'inline-string-rectangle)
(require 'mark-more-like-this)

;; Some stuff from emacs rocks
(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer-safe ()
  "Perform a bunch of safe operations on the whitespace content of a buffer.
Does not indent buffer, because it is used for a before-save-hook, and that
might be bad."
  (interactive)
  (untabify-buffer)
  (delete-trailing-whitespace)
  (set-buffer-file-coding-system 'utf-8))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (cleanup-buffer-safe)
  (indent-buffer))

(defadvice sgml-delete-tag (after reindent-buffer activate)
  (cleanup-buffer))

;;end of stuff from emacs rocks

(live-add-pack-lib "cucumber.el")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;;stop emacs from shitting all over my file system
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))
