(setq load-prefer-newer t)
(package-install 'packed)
(package-install 'auto-compile)
(require 'auto-compile)

(auto-compile-on-load-mode 1)
(auto-compile-on-save-mode 1)
