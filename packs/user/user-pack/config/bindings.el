;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

;;
;; Put some bindings in my personal minor mode so
;; they aren't overridden by other modes
;;
(define-key slime-repl-mode-map (kbd "<up>") 'slime-repl-backward-input)
(define-key slime-repl-mode-map (kbd "<down>") 'slime-repl-next-input)

(defvar diw-minor-mode-map (make-keymap) "diw-minor-mode keymap")
(define-key diw-minor-mode-map  (kbd "C-c C-k") 'slime-eval-buffer)
(define-key diw-minor-mode-map  (kbd "M-RET") 'open-next-line)
(define-key diw-minor-mode-map  (kbd "M-DEL") 'kill-whole-line)
(define-key diw-minor-mode-map  (kbd "M-[") 'paredit-backward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "M-]") 'paredit-backward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "M-{") 'paredit-forward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "M-}") 'paredit-forward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "M-)") 'paredit-splice-sexp)
(define-key diw-minor-mode-map  (kbd "M-(") 'paredit-wrap-round)
(define-key diw-minor-mode-map  (kbd "C-x k") 'kill-this-buffer)
(define-key diw-minor-mode-map  (kbd "s-w") 'delete-frame)
(define-key diw-minor-mode-map  (kbd "C-j") 'eval-print-last-sexp)
(define-key diw-minor-mode-map  (kbd "s-o") 'ido-find-file)
(define-key diw-minor-mode-map  (kbd "C-x SPC") 'cua-set-mark)
(define-key diw-minor-mode-map  (kbd "C-x C-d") 'ido-dired)
(define-key diw-minor-mode-map  (kbd "C-x d") 'ido-dired)
(define-key diw-minor-mode-map  (kbd "C-x C-b") 'ibuffer)
(define-key diw-minor-mode-map  (kbd "C-x b") 'ibuffer)
(define-key diw-minor-mode-map  (kbd "C-x C-r") 'recentf-open-files)
(define-key diw-minor-mode-map  (kbd "C-x w") 'delete-window)
(define-key diw-minor-mode-map  (kbd "C-c c") 'clipboard-kill-ring-save)
(define-key diw-minor-mode-map  (kbd "C-c v") 'clipboard-yank)
(define-key diw-minor-mode-map  (kbd "C-x C-n") 'swbuff-switch-to-next-buffer)
(define-key diw-minor-mode-map  (kbd "C-x C-p") 'swbuff-switch-to-previous-buffer)
(define-key diw-minor-mode-map  (kbd "C-z") 'cua-scroll-down)
(define-key diw-minor-mode-map  (kbd "M-`") 'cycle-buffer)
(define-key diw-minor-mode-map  (kbd "M-~") 'cycle-buffer-backward)
(define-key diw-minor-mode-map  (kbd "M-m") 'iy-go-to-char)
(define-key diw-minor-mode-map  (kbd "M-M") 'iy-go-to-char-backward)
(define-minor-mode diw-minor-mode
  "A minor mode so that my key settings aren't shadowed by other major/minor modes"
  t " diw" 'diw-minor-mode-map)
