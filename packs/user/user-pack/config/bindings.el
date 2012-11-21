;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c a") 'mc/mark-all-like-this)

;;
;; Put some bindings in my personal minor mode so
;; they aren't overridden by other modes
;;
;;(define-key slime-repl-mode-map (kbd "<up>") 'slime-repl-backward-input)
;;(define-key slime-repl-mode-map (kbd "<down>") 'slime-repl-next-input)

(define-key dired-mode-map (kbd "f") 'dired-make-file)

(define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key scss-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;;(define-key html-mode-map (kbd "RET") 'newline-and-indent)
(add-hook 'html-mode-hook 'my-html-mods)
(defun my-html-mods ()
  "Add some stuff to html-mode"
  ;;(require 'rename-sgml-tag)
  ;;(define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)
  (define-key html-mode-map (kbd "RET") 'reindent-then-newline-and-indent))
(add-hook 'sgml-mode-hook 'my-sgml-mods)
(defun my-sgml-mods ()
  "Add to sgml mode"
  (require 'rename-sgml-tag)
  (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)
  (define-key sgml-mode-map (kbd "C-c z") 'zencoding-expand-line))

(defvar diw-minor-mode-map (make-keymap) "diw-minor-mode keymap")
(define-key diw-minor-mode-map  (kbd "C-c C-k") 'slime-eval-buffer)
(define-key diw-minor-mode-map  (kbd "M-RET") 'open-next-line)
(define-key diw-minor-mode-map  (kbd "M-DEL") 'kill-whole-line)
(define-key diw-minor-mode-map  (kbd "M-9") 'paredit-backward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "M-0") 'paredit-backward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "M-(") 'paredit-forward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "M-)") 'paredit-forward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "M-}") 'paredit-splice-sexp)
(define-key diw-minor-mode-map  (kbd "M-{") 'paredit-wrap-round)
(define-key diw-minor-mode-map  (kbd "M-s") 'paredit-join-sexps)
(define-key diw-minor-mode-map  (kbd "C-x k") 'kill-this-buffer)
(define-key diw-minor-mode-map  (kbd "s-w") 'delete-frame)
(define-key diw-minor-mode-map  (kbd "C-j") 'eval-print-last-sexp)
(define-key diw-minor-mode-map  (kbd "s-o") 'ido-find-file)
(define-key diw-minor-mode-map  (kbd "C-x SPC") 'cua-set-mark)
(define-key diw-minor-mode-map  (kbd "C-x C-d") 'ido-dired)
(define-key diw-minor-mode-map  (kbd "C-x d") 'ido-dired)
(define-key diw-minor-mode-map  (kbd "C-x C-b") 'ibuffer)
(define-key diw-minor-mode-map  (kbd "C-x b") 'ido-switch-buffer)
(define-key diw-minor-mode-map  (kbd "C-x C-r") 'recentf-open-files)
(define-key diw-minor-mode-map  (kbd "C-x w") 'delete-window)
(define-key diw-minor-mode-map  (kbd "C-c c") 'clipboard-kill-ring-save)
(define-key diw-minor-mode-map  (kbd "C-c v") 'clipboard-yank)
(define-key diw-minor-mode-map  (kbd "C-x C-n") 'switch-to-next-buffer)
(define-key diw-minor-mode-map  (kbd "C-x C-p") 'switch-to-prev-buffer)
(define-key diw-minor-mode-map  (kbd "C-z") 'cua-scroll-down)
(define-key diw-minor-mode-map  (kbd "M-~") 'switch-to-next-buffer)
(define-key diw-minor-mode-map  (kbd "M-`") 'switch-to-prev-buffer)
(define-key diw-minor-mode-map  (kbd "M-m") 'iy-go-to-char)
(define-key diw-minor-mode-map  (kbd "M-M") 'iy-go-to-char-backward)
(define-key diw-minor-mode-map  (kbd "C-@") 'er/expand-region)
(define-key diw-minor-mode-map  (kbd "M-2") 'er/contract-region)



(define-minor-mode diw-minor-mode
  "A minor mode so that my key settings aren't shadowed by other major/minor modes"
  t " diw" 'diw-minor-mode-map)
