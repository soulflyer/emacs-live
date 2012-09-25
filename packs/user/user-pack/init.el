;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.
;; (require 'iy-go-to-char)
;;(add-to-list 'load-path "/Users/iain/.rvm/rubies/ruby-1.9.3-p194/share/emacs/site-lisp")
;;(require 'el4r)
;;(el4r-boot)
(live-add-pack-lib "rinari")
(require 'rinari)
;;(live-add-pack-lib "inf-ruby")
(require 'inf-ruby)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))
;; (require 'browse-kill-ring)
;; (browse-kill-ring-default-keybindings)
;; (require 'scss-mode)
;; Load bindings config
(live-load-config-file "core.el")
(live-load-config-file "bindings.el")
