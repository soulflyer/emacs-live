;;; git-pack/init.el
;;(live-add-pack-lib "git-modes")
(package-install 'gitattributes-mode)
(package-install 'gitconfig-mode)
(package-install 'gitignore-mode)
(require 'gitattributes-mode)
(require 'gitconfig-mode)
(require 'gitignore-mode)

(live-load-config-file "magit-conf.el")
