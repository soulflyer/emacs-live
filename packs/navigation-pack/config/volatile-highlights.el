;; momentarily highlight changes made by commands such as undo, yank-pop, etc.
(package-install 'volatile-highlights)
(require 'volatile-highlights)
(volatile-highlights-mode t)
