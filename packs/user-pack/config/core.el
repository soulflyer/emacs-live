;; package --- summary:
;;; Commentary:
;;; Code:
(setq-default flycheck-emacs-lisp-load-path 'inherit)
(setq live-disable-zone t)
(require 'iy-go-to-char)

(unless (string= "subversion\n" (shell-command-to-string "hostname -s"))
  (set-face-attribute 'mode-line nil :foreground "#C930d0")
  (set-face-attribute 'mode-line-inactive nil :foreground "#904090"))

;;(global-aggressive-indent-mode 1)
;; (add-to-list 'aggressive-indent-excluded-modes 'cider-repl-mode)

;; This doesn't work, so enable truncate lines globaly
;; (add-hook 'bm-bookmark-mode-hook (lambda () (setq truncate-lines t)))
(setq-default truncate-lines t)

(add-hook 'calendar-initial-window-hook 'diary-mark-entries)

;; These are not needed as long as global truncate lines is set
(add-hook 'dired-mode-hook      (lambda () (setq truncate-lines t)))
(add-hook 'grep-mode-hook       (lambda () (setq truncate-lines t)))
(add-hook 'cider-repl-mode-hook (lambda () (setq truncate-lines t)))

(add-hook 'cider-repl-mode-hook '(lambda () (setq scroll-conservatively 101)))

;; (add-hook 'text-mode-hook 'turn-on-visual-line-mode)
;; (add-hook 'prog-mode-hook 'turn-on-visual-line-mode)

;; this sets the character displayed when a line is truncated. use ?\  to remove it altogether.
(set-display-table-slot standard-display-table 0 ?~)

;; Don't think this works. Seem to need to specify the method anyway ie
;; ssh:iain@mimi.local:<file>
(setq tramp-default-method "ssh")
(add-to-list 'tramp-default-method-alist '("mimi.local" "" "ssh"))
(add-to-list 'tramp-default-method-alist '("soulflyer.co.uk" "" "xssh"))
(add-to-list 'tramp-default-user-alist '("ssh" "soulflyer\\.co\\.uk'" "jphuquoc"))
(electric-pair-mode 1)

(ivy-mode 1)
(setq ivy-count-format "%d/%d:")
(setq ivy-use-virtual-buffers t)
(setq ivy-use-selectable-prompt t)

(projectile-mode +1)
(setq projectile-completion-system 'ivy)
(which-key-mode)
;; shut up about my elisp code you pedant
(setq-default flycheck-disabled-checkers `(emacs-lisp-checkdoc))

(setq show-paren-style (quote expression))
(delete-selection-mode 1)

(require 'openwith)
(openwith-mode t)
(setq openwith-associations '(("\\.\\(png\\|jp?g\\|pdf\\)\\'" "open" (file))
                              ("\\.\\(mp3\\|avi\\|wmv\\)\\'" "vlc" (file))))

(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;;(require 'inf-ruby)
;; (autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
;; (autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
;; (eval-after-load 'ruby-mode
;;   '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'ruby-mode-hook 'paredit-mode)
(add-hook 'web-mode-hook 'zencoding-mode)

;; Enable paredit for a couple for non lisp modes; tweak
;; paredit-space-for-delimiter-predicates to avoid inserting spaces
;; before open parens.
(dolist (mode '(ruby espresso))
  (add-hook (intern (format "%s-mode-hook" mode))
            '(lambda ()
               (add-to-list (make-local-variable 'paredit-space-for-delimiter-predicates)
                            (lambda (_ _) nil))
               (enable-paredit-mode))))

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rc\\'" . shell-script-mode))
;;stop emacs from shitting all over my file system
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files
(setq backup-inhibited t);

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-closing t)

(autoload 'applescript-mode "applescript-mode" "Major mode for editing AppleScript source." t)
(add-to-list 'auto-mode-alist '("\\.applescript$" . applescript-mode))

(autoload 'apples-mode "apples-mode" "Happy AppleScripting!" t)
(autoload 'apples-open-scratch "apples-mode" "Open scratch buffer for AppleScript." t)
(add-to-list 'auto-mode-alist '("\\.\\(applescri\\|sc\\)pt\\'" . apples-mode))

;;(eval-after-load 'flycheck '(flycheck-clojure-setup))
;; This will cause "Zoning.." problem if flycheck is not installed (package-install)
(add-hook 'after-init-hook #'global-flycheck-mode)

(setq default-tab-width 2)

;; Cleanup ibuffer display so I can tell which file is which
(setq ibuffer-formats '((mark modified read-only git-status-mini " "
                              (size 7 -1 :left :elide)
                              (name))
                        (mark filename)))

;; bookmark list columns
(setq bookmark-bmenu-file-column 50)

;; Highlight the cursor on scroll. Can make it hard to read the current line.
(beacon-mode 1)
(setq beacon-size 60)
(setq beacon-color "yellow")
(setq beacon-blink-delay 0.3)
(setq beacon-blink-duration 1)
(setq beacon-dont-blink-major-modes '(cider-repl-mode))
(setq beacon-blink-when-window-scrolls t)

(autoload 'muttrc-mode "muttrc-mode.el" "Major mode to edit muttrc files" t)
(setq auto-mode-alist (append '(("muttrc\\'" . muttrc-mode)) auto-mode-alist))

;; Linux needs this, MacOSX fails if it's left in. TODO make linux/macos auto select section
;;(xclip-mode 1)

;; This is how to do it, from emacs-live:
;; (when (eq system-type 'darwin)
;;   (live-load-config-file "osx.el"))
;;; core.el ends here
