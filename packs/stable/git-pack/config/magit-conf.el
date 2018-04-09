;;; git-pack/magit-conf.el

;;(live-add-pack-lib "magit/lisp")
(package-install 'magit)
;; TODO work out why the pack-lib is needed even though magit version in use is the one
;; installed from melpa, not this one. Check with magit-version.
(require 'magit)

(add-hook 'magit-log-edit-mode-hook
          (lambda ()
            (set-fill-column 72)
            (auto-fill-mode 1)))
