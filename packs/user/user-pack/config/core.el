;;; package --- summary:
;;; Commentary:
;;; Code:
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
(add-to-list 'same-window-regexps "\*Shell Command Output\*")
(add-to-list 'same-window-regexps "\*grep\*")
(add-to-list 'same-window-regexps "*.erb")
(add-to-list 'same-window-regexps "\*Backtrace\*")
(add-to-list 'same-window-regexps "\*nrepl\*")
(add-to-list 'same-window-regexps "\*Colors\*")
(add-to-list 'same-window-regexps "\*Org Agenda\*")
(add-to-list 'same-window-regexps "\*magit\*")
(add-to-list 'same-window-regexps "\*cider-repl\*")
;;(add-to-list 'org-file-apps '("\\.jpg\\'" . default) t)

(setq tramp-default-method "sshx")
(electric-pair-mode 1)

(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-closing t)
(eval-after-load "org"
  '(progn
     ;; .txt files aren't in the list initially, but in case that changes
     ;; in a future version of org, use if to avoid errors
     (if (assoc "\\.jpg\\'" org-file-apps)
         (setcdr (assoc "\\.jpg\\'" org-file-apps) "default")
       (add-to-list 'org-file-apps '("\\.jpg\\'" . default) t))))

;;(add-to-list 'same-window-regexps "\*Org Agenda\*")
;; the line above doesn't work. Set org-agenda-window-setup instead
(setq org-agenda-window-setup 'current-window)

(setq org-agenda-files '("~/Documents/Plans"))

(setq org-enforce-todo-dependencies t)
(setq org-agenda-dim-blocked-tasks t)

(setq org-use-speed-commands t)
(setq org-lowest-priority 73)

(setq org-speed-commands-user nil)
(add-to-list 'org-speed-commands-user '("4" org-priority 68))
(add-to-list 'org-speed-commands-user '("5" org-priority 69))
(add-to-list 'org-speed-commands-user '("6" org-priority 70))
(add-to-list 'org-speed-commands-user '("7" org-priority 71))
(add-to-list 'org-speed-commands-user '("8" org-priority 72))
(add-to-list 'org-speed-commands-user '("9" org-priority 73))

(setq org-priority-faces (quote ((?A :foreground "#d02030")
                                 (?B :foreground "#e00000")
                                 (?C :foreground "#f05000")
                                 (?D :foreground "#c0c000")
                                 (?E :foreground "#00f000")
                                 (?F :foreground "#00d090")
                                 (?G :foreground "#0000f4")
                                 (?H :foreground "#8000d0")
                                 (?I :foreground "#575757"))))

(add-hook 'org-mode-hook (lambda ()

(set-face-attribute 'org-level-1 nil :foreground "#00f000")
(set-face-attribute 'org-level-2 nil :foreground "#00d090")
(set-face-attribute 'org-level-3 nil :foreground "#40d0d0")
(set-face-attribute 'org-level-4 nil :foreground "#50a0a0")
(set-face-attribute 'org-level-5 nil :foreground "#508080")
(set-face-attribute 'org-level-6 nil :foreground "#606060")
(set-face-attribute 'org-level-7 nil :foreground "#505050")
(set-face-attribute 'org-level-8 nil :foreground "#404040")))


(custom-set-faces '(org-agenda-dimmed-todo-face ((t (:foreground "#7f7f7f")))))

(setq org-log-done 'time)

(setq org-taxonomy-file "~/Documents/Plans/taxonomy.org")
(setq org-capture-templates
      '(("p" "Plan" entry (file "~/Documents/Plans/plan.org")
         "* TODO %?%i [/]")
        ("t" "Taxonomy")
        ("tf" "Fish" entry (file+headline org-taxonomy-file "Fish")
         "*** %?%i")
        ("tc" "Crustacea" entry (file+headline org-taxonomy-file "Crustacea")
         "*** %?%i")
        ("ta" "Anemones" entry (file+headline org-taxonomy-file "Anemones")
         "* %?%i")
        ("tm" "Molluscs" entry (file+headline org-taxonomy-file "Molluscs")
         "* %?%i")
        ("ts" "Starfish" entry (file+headline org-taxonomy-file "Starfish")
         "* %?%i")))

;;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;;(setq-default  cursor-type 'bar)
(setq show-paren-style (quote expression))
(delete-selection-mode 1)

(require 'openwith)
(openwith-mode t)

(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
(require 'scss-mode)

(require 'inf-ruby)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'ruby-mode-hook 'paredit-mode)

;; Enable paredit for a couple for non lisp modes; tweak
;; paredit-space-for-delimiter-predicates to avoid inserting spaces
;; before open parens.
(dolist (mode '(ruby espresso))
  (add-hook (intern (format "%s-mode-hook" mode))
            '(lambda ()
               (add-to-list (make-local-variable 'paredit-space-for-delimiter-predicates)
                            (lambda (_ _) nil))
               (enable-paredit-mode))))

(live-add-pack-lib "expand-region.el")
(require 'expand-region)

(live-add-pack-lib "multiple-cursors.el")
(require 'multiple-cursors)

(live-add-pack-lib "jade-mode")
(require 'sws-mode)
(require 'jade-mode)

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

;;(live-add-pack-lib "cucumber.el")
;;(require 'feature-mode)
;;(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; Open .rake files in ruby mode
(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))

;;stop emacs from shitting all over my file system
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files
(setq backup-inhibited t);

;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

;; Some stuff to make grep result selection appear in the same window
;; Taken from http://stackoverflow.com/questions/2299133/emacs-grep-find-link-in-same-window
(eval-after-load "compile"
  '(defun compilation-goto-locus (msg mk end-mk)
     "Jump to an error corresponding to MSG at MK.
All arguments are markers.  If END-MK is non-nil, mark is set there
and overlay is highlighted between MK and END-MK."
     ;; Show compilation buffer in other window, scrolled to this error.
     (let* ((from-compilation-buffer (eq (window-buffer (selected-window))
                                         (marker-buffer msg)))
            ;; Use an existing window if it is in a visible frame.
            (pre-existing (get-buffer-window (marker-buffer msg) 0))
            (w (if (and from-compilation-buffer pre-existing)
                   ;; Calling display-buffer here may end up (partly) hiding
                   ;; the error location if the two buffers are in two
                   ;; different frames.  So don't do it if it's not necessary.
                   pre-existing
                 (let ((display-buffer-reuse-frames t)
                       (pop-up-windows t))
                   ;; Pop up a window.
                   (display-buffer (marker-buffer msg)))))
            (highlight-regexp (with-current-buffer (marker-buffer msg)
                                ;; also do this while we change buffer
                                (compilation-set-window w msg)
                                compilation-highlight-regexp)))
       ;; Ideally, the window-size should be passed to `display-buffer' (via
       ;; something like special-display-buffer) so it's only used when
       ;; creating a new window.
       (unless pre-existing (compilation-set-window-height w))

       (switch-to-buffer (marker-buffer mk))

       ;; was
       ;; (if from-compilation-buffer
       ;;     ;; If the compilation buffer window was selected,
       ;;     ;; keep the compilation buffer in this window;
       ;;     ;; display the source in another window.
       ;;     (let ((pop-up-windows t))
       ;;       (pop-to-buffer (marker-buffer mk) 'other-window))
       ;;   (if (window-dedicated-p (selected-window))
       ;;       (pop-to-buffer (marker-buffer mk))
       ;;     (switch-to-buffer (marker-buffer mk))))
       ;; If narrowing gets in the way of going to the right place, widen.
       (unless (eq (goto-char mk) (point))
         (widen)
         (goto-char mk))
       (if end-mk
           (push-mark end-mk t)
         (if mark-active (setq mark-active)))
       ;; If hideshow got in the way of
       ;; seeing the right place, open permanently.
       (dolist (ov (overlays-at (point)))
         (when (eq 'hs (overlay-get ov 'invisible))
           (delete-overlay ov)
           (goto-char mk)))

       (when highlight-regexp
         (if (timerp next-error-highlight-timer)
             (cancel-timer next-error-highlight-timer))
         (unless compilation-highlight-overlay
           (setq compilation-highlight-overlay
                 (make-overlay (point-min) (point-min)))
           (overlay-put compilation-highlight-overlay 'face 'next-error))
         (with-current-buffer (marker-buffer mk)
           (save-excursion
             (if end-mk (goto-char end-mk) (end-of-line))
             (let ((end (point)))
               (if mk (goto-char mk) (beginning-of-line))
               (if (and (stringp highlight-regexp)
                        (re-search-forward highlight-regexp end t))
                   (progn
                     (goto-char (match-beginning 0))
                     (move-overlay compilation-highlight-overlay
                                   (match-beginning 0) (match-end 0)
                                   (current-buffer)))
                 (move-overlay compilation-highlight-overlay
                               (point) end (current-buffer)))
               (if (or (eq next-error-highlight t)
                       (numberp next-error-highlight))
                   ;; We want highlighting: delete overlay on next input.
                   (add-hook 'pre-command-hook
                             'compilation-goto-locus-delete-o)
                 ;; We don't want highlighting: delete overlay now.
                 (delete-overlay compilation-highlight-overlay))
               ;; We want highlighting for a limited time:
               ;; set up a timer to delete it.
               (when (numberp next-error-highlight)
                 (setq next-error-highlight-timer
                       (run-at-time next-error-highlight nil
                                    'compilation-goto-locus-delete-o)))))))
       (when (and (eq next-error-highlight 'fringe-arrow))
         ;; We want a fringe arrow (instead of highlighting).
         (setq next-error-overlay-arrow-position
                   (copy-marker (line-beginning-position)))))))

;; Add file creation to dired
(defun dired-make-file (new-file-name)
  (interactive "sFile name: ")
  (shell-command (concat "touch " new-file-name))
  (message "created %s" new-file-name)
  (message "major mode %s" major-mode)
  (if (string= major-mode "dired-mode")
      (revert-buffer)))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (require 'json-mode)

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(autoload 'applescript-mode "applescript-mode" "Major mode for editing AppleScript source." t)
(add-to-list 'auto-mode-alist '("\\.applescript$" . applescript-mode))
;; This will cause "Zoning.." problem if flycheck is not installed (package-install)
(add-hook 'after-init-hook #'global-flycheck-mode)
