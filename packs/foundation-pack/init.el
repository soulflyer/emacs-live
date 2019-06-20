(package-install 'swiper)
(package-install 'ivy)

(require 'swiper)

(package-install 'with-editor)

(package-install 'queue)
(require 'queue)
(require 'seq)

(package-install 'dash)
(require 'dash)

(when (not (or (eq 'ms-dos system-type)
               (eq 'windows-nt system-type)))
  (live-load-config-file "auto-compile-conf.el"))

(require 'dircolors)

(package-install 'smooth-scrolling)
(require 'smooth-scrolling)

(package-install 'buffer-move)
(require 'buffer-move)

(package-install 'find-file-in-project)
(require 'find-file-in-project)

(package-install 's)
(require 's)

(package-install 'epl)
(require 'epl)

(package-install 'pkg-info)
(require 'pkg-info)

(package-install 'hydra)

(package-install 'smex)
(require 'smex)

(live-load-config-file "backup-dir-conf.el")
(live-load-config-file "util-fns.el")
(live-load-config-file "built-in.el")
(live-load-config-file "cosmetic.el")
(live-load-config-file "ido-conf.el")
(live-load-config-file "smex-conf.el")
(live-load-config-file "tramp-conf.el")
(live-load-config-file "mouse-conf.el")
(live-load-config-file "ibuffer-git-conf.el")
(live-load-config-file "key-chord-conf.el")
;;(live-load-config-file "window-number-conf.el")
(live-load-config-file "recentf-conf.el")
(live-load-config-file "elisp-slime-nav-conf.el")
(live-load-config-file "popwin-conf.el")
(live-load-config-file "shell-conf.el")
(live-load-config-file "spelling-conf.el")
(live-load-config-file "lisp-conf.el")
(live-load-config-file "win-switch-conf.el")
(live-load-config-file "zone-conf.el")
(live-load-config-file "monkey-patch.el")
(live-load-config-file "live.el")


(when (eq system-type 'darwin)
  (live-load-config-file "osx.el"))
