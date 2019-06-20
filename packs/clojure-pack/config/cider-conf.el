(package-install 'spinner)
(package-install 'cider)
(require 'cider-apropos)
(require 'cider-macroexpansion)
(require 'cider-browse-ns)
(require 'cider-classpath)

(defun live-windows-hide-eol ()
 "Do not show ^M in files containing mixed UNIX and DOS line endings."
 (interactive)
 (setq buffer-display-table (make-display-table))
 (aset buffer-display-table ?\^M []))

(when (eq system-type 'windows-nt)
  (add-hook 'nrepl-mode-hook 'live-windows-hide-eol ))

(add-hook 'cider-repl-mode-hook
          (lambda ()
            (paredit-mode 1)))

(add-hook 'cider-mode-hook
          (lambda ()
            (paredit-mode 1)))

;; What are these for?
;; (setq cider-popup-stacktraces t)
;; (setq cider-popup-stacktraces-in-repl t)

(add-to-list 'same-window-buffer-names "*cider*")
(setq cider-overlays-use-font-lock t)

(setq cider-repl-history-file "~/.cider-history")
(setq cider-prompt-for-symbol nil)
(setq cider-show-error-buffer nil)

;; This should probably be set per project in .dir-locals.el
(setq cider-default-cljs-repl 'figwheel )

;; Colourize all fns known to be defined, not just clojure core
(setq cider-font-lock-dynamically '(macro core function var deprecated))

;; Specify the print length to be 100 to stop infinite sequences killing
;; things. This might be dangerous for some people relying on
;; *print-length* being larger. Consider a work around
;; (defun live-nrepl-set-print-length ()
;;   (nrepl-send-string-sync "(set! *print-length* 100)" "clojure.core"))

;; (add-hook 'nrepl-connected-hook 'live-nrepl-set-print-length)
(setq cider-repl-use-pretty-printing t)

(setq nrepl-port "4555")
