;;; package --- Summary
;;; Commentary:
;; Place your bindings here.♯
;;; Code:
;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)
(define-key direx:direx-mode-map (kbd "s") 'direx-grep:grep-item)
(define-key direx:direx-mode-map (kbd "S") 'direx-grep:grep-item-from-root)
(define-key direx:direx-mode-map (kbd "a") 'direx-grep:show-all-item-at-point)
(define-key direx:direx-mode-map (kbd "A") 'direx-grep:show-all-item)

;; Release this so it can be used by yasnippet
(define-key org-mode-map (kbd "C-c C-s") nil)
(define-key org-mode-map (kbd "C-c C-n") nil)
(global-set-key (kbd "C-c C-s") 'yas-insert-snippet)
;;(global-set-key (kbd "C-c C-n") 'yas-new-snippet)

;;(define-key grep-mode-map (kbd "r") 'rename-buffer)

(define-key dired-mode-map (kbd "f")         'dired-make-file)
(define-key dired-mode-map (kbd "C-c C-e")   'wdired-change-to-wdired-mode)
(define-key dired-mode-map (kbd "/")         'dired-up-directory)
(define-key dired-mode-map [mouse-2]         'dired-find-file)

(add-hook 'sgml-mode-hook 'my-sgml-mods)
(defun my-sgml-mods ()
  "Add to sgml mode."
  (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)
  (define-key sgml-mode-map (kbd "C-c z") 'zencoding-expand-line)
  (define-key sgml-mode-map (kbd "RET") 'reindent-then-newline-and-indent))

(provide 'bindings)
;;; bindings.el ends here
