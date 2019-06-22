;; Default Emacs Live bindings

;; Single key stuff
(global-set-key (kbd "C-a")     'back-to-indentation)
(global-set-key (kbd "C-x C-a") 'move-beginning-of-line)
(global-set-key (kbd "C-s")     'swiper)
(global-set-key (kbd "M-x")     'counsel-M-x)
(global-set-key (kbd "M-m")     'iy-go-to-char)
(global-set-key (kbd "M-M")     'iy-go-to-char-backward)
(global-set-key (kbd "C-@")     'er/expand-region)
(global-set-key (kbd "M-2")     'er/contract-region)
(global-set-key (kbd "C-h")     'help)
(global-set-key (kbd "C-z")     'cua-scroll-down)
(global-set-key (kbd "M-~")     'switch-to-next-buffer)
(global-set-key (kbd "M-`")     'switch-to-prev-buffer)
(global-set-key (kbd "M-p")     'outline-previous-visible-heading)
(global-set-key (kbd "M-n")     'outline-next-visible-heading)
(global-set-key (kbd "M-'")     'repeat)
(global-set-key [f6]            'rgrep)
(global-set-key [f5]            'rgrep-context)
(define-key grep-mode-map (kbd "r") 'rename-buffer)

(global-set-key (kbd "C-o")     'avy-goto-char-timer)
(global-set-key (kbd "C-M-q")   'quoted-insert)
(global-set-key (kbd "C-M-\\")  'aggressive-indent-mode)
(global-set-key (kbd "C-\\")    'align-regexp)
(global-set-key (kbd "M-k")     'live-backwards-kill-line)
(global-set-key (kbd "M-y")     'browse-kill-ring)
(global-set-key (kbd "M-/")     'comment-or-uncomment-region)
(global-set-key (kbd "C-r")     'isearch-backward)
(global-set-key (kbd "M-=")     'live-increment-number-at-point)
(global-set-key (kbd "M--")     'live-decrement-number-at-point)
(global-set-key (kbd "M-DEL")   'backward-kill-word)
(global-set-key (kbd "C-M-d")   'kill-word)

;; Shortcuts for C-x-digit commands
(global-set-key (kbd "M-1")     'delete-other-windows)
(global-set-key (kbd "M-0")     'delete-window)
(global-set-key (kbd "M-o")     'win-switch-dispatch)
(global-set-key (kbd "M-2")     'split-window-below)
(global-set-key (kbd "M-3")     'split-window-right)

(global-set-key (kbd "M-SPC ")  'live-delete-whitespace-except-one)
(global-set-key (kbd "C-<up>")   (lambda () (interactive) (forward-line -10)))
(global-set-key (kbd "C-<down>") (lambda () (interactive) (forward-line 10)))
(global-set-key (kbd "C-M-_")   'undo-tree-visualize)
(global-set-key (kbd "C-_")     'undo-tree-visualize)
(define-key undo-tree-visualizer-mode-map (kbd "-") 'windresize)

;; This is for gui emacs. It shouldn't even reach command line emacs
(global-set-key (kbd "C-<tab>") 'win-switch-dispatch)

(define-key prog-mode-map (kbd "RET") 'reindent-then-newline-and-indent)

;; C-c Groups
;;
;;e - eval and replace
;;b - winner undo
;;d - diff shortcuts
;;f - winner redo
;;g - git gutter
;;i - utf8 char shortcuts
;;j - jump shortcuts
;;l - org-link stuff
;;m - multiple-cusor
;;p - paredit shortcuts
;;t - text shortcuts
;;w - window and buffer shortcuts


;;s - show popupwindows


(global-set-key (kbd "C-c b")   'winner-undo)
(global-set-key (kbd "C-c f")   'winner-redo)

(global-set-key (kbd "C-c h")   'helm-descbinds)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-c b")   'switch-to-next-buffer)
(global-set-key (kbd "C-c C-b") 'switch-to-prev-buffer)
(global-set-key (kbd "C-c o")   'org-agenda)

(global-set-key (kbd "C-c C-j") 'cider-jack-in)
(global-set-key (kbd "C-c M-j") 'cider-jack-in-clojurescript)
(global-set-key (kbd "C-c M-c") 'cider-connect)

(global-set-key (kbd "C-c C-s") 'yas-insert-snippet)
(global-set-key (kbd "C-c C-n") 'yas-new-snippet)

(global-set-key (kbd "C-c u")   'underline-with-char)
(global-set-key (kbd "C-c v")   'visual-line-mode)
(global-set-key (kbd "C-c C-t") 'toggle-truncate-lines)

(global-set-key (kbd "C-c C-c t") 'live-show-ansi-terminal)

;;diff shortcuts
(global-set-key (kbd "C-c d f") 'diff-buffer-with-file)

;; Git Gutter
(global-set-key (kbd "C-c g g") 'git-gutter-mode)
(global-set-key (kbd "C-c g s") 'magit-status)
(global-set-key (kbd "C-c g p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-c g n") 'git-gutter:next-hunk)
(global-set-key (kbd "C-c g d") 'git-gutter:popup-diff)
(global-set-key (kbd "C-c g r") 'git-gutter:revert-hunk)

;;text manipulation shortcuts
(global-set-key (kbd "C-c t b") 'untabify-buffer)
(global-set-key (kbd "C-c t r") 'untabify)
(global-set-key (kbd "C-c t u") 'underline-with-char)

;;emacs-lisp shortcuts
(global-set-key (kbd "C-c m b") 'eval-buffer)
(global-set-key (kbd "C-c m e") 'eval-last-sexp)
(global-set-key (kbd "C-c m i") 'eval-expression)
(global-set-key (kbd "C-c m d") 'eval-defun)
(global-set-key (kbd "C-c m n") 'eval-print-last-sexp)
(global-set-key (kbd "C-c m r") 'eval-region)

;;funky characters
(global-set-key (kbd "C-c i l") (lambda () (interactive) (insert "λ")))
(global-set-key (kbd "C-c i n") (lambda () (interactive) (insert "ℕ")))
(global-set-key (kbd "C-c i i") (lambda () (interactive) (insert "∞")))
(global-set-key (kbd "C-c i .") (lambda () (interactive) (insert "×")))
(global-set-key (kbd "C-c i 0") (lambda () (interactive) (insert "∅")))
(global-set-key (kbd "C-c i u") (lambda () (interactive) (insert "∪")))
(global-set-key (kbd "C-c i s") (lambda () (interactive) (insert "♯")))
(global-set-key (kbd "C-c i f") (lambda () (interactive) (insert "♭")))
(global-set-key (kbd "C-c i p") (lambda () (interactive) (insert "£")))
(global-set-key (kbd "C-c i c") (lambda () (interactive) (insert "©")))

(global-set-key (kbd "C-c j p") 'quick-jump-go-back)
(global-set-key (kbd "C-c j b") 'quick-jump-go-back)
(global-set-key (kbd "C-c j m") 'quick-jump-push-marker)
(global-set-key (kbd "C-c j n") 'quick-jump-go-forward)
(global-set-key (kbd "C-c j f") 'quick-jump-go-forward)
(global-set-key (kbd "C-c j c") 'quick-jump-clear-all-marker)

(global-set-key (kbd "C-c j d") 'dumb-jump-go)
(global-set-key (kbd "C-c j u") 'dumb-jump-back)
(global-set-key (kbd "C-c j g") 'dumb-jump-go-prompt)

;; Org link stuff
(global-set-key (kbd "C-c l s") 'org-store-link)
(global-set-key (kbd "C-c l i") 'org-insert-link)
(global-set-key (kbd "C-c l o") (lambda () (interactive) (org-open-at-point t)))

;; Multiple Cursors
(global-set-key (kbd "C-c m n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c m p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c m o") 'mc/mark-pop)
(global-set-key (kbd "C-c m m") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-c m d") 'mc/mark-all-dwim)
(global-set-key (kbd "C-c m a") 'mc/mark-all-like-this)


;;window and buffer movement
;; No use at all with tmux and emacs single window setup, but keep for switch to gui emacs.
(global-set-key (kbd "C-c w s") 'swap-windows)
(global-set-key (kbd "C-c w r") 'rotate-windows)
(global-set-key (kbd "C-c w p") 'buf-move-up)
(global-set-key (kbd "C-c w n") 'buf-move-down)
(global-set-key (kbd "C-c w b") 'buf-move-left)
(global-set-key (kbd "C-c w f") 'buf-move-right)
(global-set-key (kbd "C-c w .") 'shrink-window-horizontally)
(global-set-key (kbd "C-c w ,") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c w /") (lambda () (interactive) (enlarge-window -1)))
(global-set-key (kbd "C-c w '") (lambda () (interactive) (enlarge-window 1)))

;; clojure
(define-key clojure-mode-map (kbd "C-c c m") 'clojure-convert-collection-to-map)
(define-key clojure-mode-map (kbd "C-c c v") 'clojure-convert-collection-to-vector)
(define-key clojure-mode-map (kbd "C-c c l") 'clojure-convert-collection-to-list)
(define-key clojure-mode-map (kbd "C-c c s") 'clojure-convert-collection-to-set)
(define-key clojure-mode-map (kbd "C-c c {") 'clojure-convert-collection-to-map)
(define-key clojure-mode-map (kbd "C-c c [") 'clojure-convert-collection-to-vector)
(define-key clojure-mode-map (kbd "C-c c '") 'clojure-convert-collection-to-quoted-list)
(define-key clojure-mode-map (kbd "C-c c (") 'clojure-convert-collection-to-list)
(define-key clojure-mode-map (kbd "C-c c #") 'clojure-convert-collection-to-set)
(define-key clojure-mode-map (kbd "C-c s n") 'clojure-sort-ns)
(define-key clojure-mode-map (kbd "C-c l i") 'clojure-introduce-let)
(define-key clojure-mode-map (kbd "C-c l m") 'clojure-move-to-let)


;;TODO sort out this mess
(define-key paredit-mode-map (kbd "C-c l k") 'paredit-splice-sexp-killing-forward)
(define-key paredit-mode-map (kbd "C-c l w") 'paredit-splice-sexp-killing-backward)
(define-key paredit-mode-map (kbd "C-c l l") 'align-cljlet)
(define-key paredit-mode-map (kbd "C-c l t") 'fill-paragraph)
(define-key paredit-mode-map (kbd "C-c l j") 'live-paredit-forward-slurp-sexp-neatly)
(define-key paredit-mode-map (kbd "M-S")     'paredit-split-sexp)
(define-key paredit-mode-map (kbd "M-s")     'paredit-splice-sexp)
(define-key paredit-mode-map (kbd "M-j")     'paredit-join-sexps)
(define-key paredit-mode-map (kbd "M-P")     'live-paredit-previous-top-level-form)
(define-key paredit-mode-map (kbd "M-N")     'live-paredit-next-top-level-form)
(define-key paredit-mode-map (kbd "C-M-f")   'live-paredit-forward)
(define-key paredit-mode-map (kbd "M-q")     'live-paredit-reindent-defun)
(define-key paredit-mode-map (kbd "C-M-d")   'paredit-forward-kill-word)
(define-key paredit-mode-map (kbd "M-k")     'live-paredit-backward-kill)
(define-key paredit-mode-map (kbd "M-T")     'transpose-sexps)
(define-key paredit-mode-map (kbd "C-M-k")   'live-paredit-copy-sexp-at-point)
(define-key paredit-mode-map (kbd "C-<left>")  'paredit-backward)
(define-key paredit-mode-map (kbd "C-<right>") 'paredit-forward)
(define-key paredit-mode-map (kbd "C-c p b f") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-c p f b") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-c p b b") 'paredit-backward-barf-sexp)
(define-key paredit-mode-map (kbd "C-c p s f") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-c p f s") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-c p s b") 'paredit-backward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-c p b s") 'paredit-backward-slurp-sexp)

;; org-mode
(define-key org-mode-map (kbd "C-M-f")    'org-metadown)
(define-key org-mode-map (kbd "C-M-b")    'org-metaup)
(define-key org-mode-map (kbd "C-M-l")    'org-shiftright)
(define-key org-mode-map (kbd "C-M-j")    'org-shiftleft)
(define-key org-mode-map (kbd "C-M-i")    'org-shiftup)
(define-key org-mode-map (kbd "C-M-k")    'org-shiftdown)
(define-key org-mode-map (kbd "C-M-_")    'live-decrement-number-at-point)
(define-key org-mode-map (kbd "C-c C-s")  'yas-insert-snippet)
(define-key org-mode-map (kbd "C-c C-n")  'yas-new-snippet)

(define-key dired-mode-map (kbd "f")       'dired-make-file)
(define-key dired-mode-map (kbd "C-c C-e") 'wdired-change-to-wdired-mode)
(define-key dired-mode-map (kbd "/")       'dired-up-directory)
(define-key dired-mode-map [mouse-2]       'dired-find-file)


(global-set-key  (kbd "C-x k")   'kill-this-buffer)
(global-set-key  (kbd "C-x !")   'live-server-kill-terminal)
(global-set-key  (kbd "C-x C-b") 'ibuffer)
(global-set-key  (kbd "C-x C-m") 'execute-extended-command)
(global-set-key  (kbd "C-x o")   'win-switch-dispatch)
(global-set-key  (kbd "C-x C-d") 'ido-dired)
(global-set-key  (kbd "C-x d")   'ido-dired)
(global-set-key  (kbd "C-x C-b") 'ibuffer)
(global-set-key  (kbd "C-x b")   'ido-switch-buffer)
(global-set-key  (kbd "C-x C-r") 'recentf-open-files)
(global-set-key  (kbd "C-x SPC") 'cua-set-mark)
(global-set-key  (kbd "C-x w")   'delete-window)

(define-key cider-repl-mode-map   (kbd "<up>")    'cider-repl-backward-input)
(define-key cider-repl-mode-map   (kbd "<down>")  'cider-repl-next-input)
(define-key cider-repl-mode-map   (kbd "C-c C-c") 'cider-repl-kill-input)
(define-key cider-repl-mode-map   (kbd "C-c h")   'cider-browse-ns-all)
(define-key cider-repl-mode-map   (kbd "C-c x")   'cider-refresh)
(define-key cider-repl-mode-map   (kbd "C-c q")   'cider-quit)
(define-key cider-repl-mode-map   (kbd "M-RET")   'cider-doc)
(define-key cider-mode-map        (kbd "M-RET")   'cider-doc)
(define-key lisp-mode-shared-map  (kbd "M-RET")   'live-lisp-describe-thing-at-point)
