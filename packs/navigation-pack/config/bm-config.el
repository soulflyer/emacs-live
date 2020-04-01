(package-install 'bm)

(setq bm-repository-file "/Users/iain/Code/emacs.d/etc/bm-repository")
(setq bm-restore-repository-on-load t)

(require 'bm)

(add-hook 'kill-buffer-hook  #'bm-buffer-save)
(add-hook 'find-file-hooks   #'bm-buffer-restore)
(add-hook 'after-revert-hook #'bm-buffer-restore)
(add-hook 'kill-emacs-hook   #'(lambda nil
                                 (bm-buffer-save-all)
                                 (bm-repository-save)))


(setq-default bm-buffer-persistence t)
(setq bm-cycle-all-buffers t)
(setq bm-highlight-style 'bm-highlight-line-and-fringe)
(setq bm-annotation-width 30)

(defun buffer-pathnames (buffer-repository)
  (mapcar 'car buffer-repository))

(defun bm-buffers ()
  (buffer-pathnames bm-repository))

(defun open-bm-files (bookmarked-buffers)
  (mapcar 'find-file-noselect bookmarked-buffers))

(defun bookmark-buffers ()
  (interactive)
  (open-bm-files (bm-buffers)))

(face-spec-reset-face 'bm-face nil)
(set-face-attribute   'bm-face nil :background "blue")
(face-spec-reset-face 'bm-persistent-face nil)
(set-face-attribute 'bm-persistent-face nil :background "color-235")
