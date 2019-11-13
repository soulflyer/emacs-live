;;; package --- Summary
;;; Commentary:
;;; Code:
(package-install 'apples-mode)
(package-install 'applescript-mode)
(package-install 'auto-highlight-symbol)
(package-install 'beacon)

(package-install 'emidje)
(eval-after-load 'cider
  #'emidje-setup)

(package-install 'counsel)
;;(package-install 'counsel-osx-app)
;;(require 'counsel-osx-app)

(package-install 'decide)
;; without the require, the decide-roll functions don't appear until after
;; decide-maode is called?
(require 'decide)

(package-install 'direx-grep)
(require 'direx-grep)

(package-install 'feature-mode)

(package-install 'flycheck)
(package-install 'gited)
(package-install 'google-translate)

(package-install 'grep-a-lot)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)

(package-install 'inf-mongo)
(setq inf-mongo-command "/opt/local/bin/mongo 127.0.0.1:27017/soulflyer")

(package-install 'jade-mode)
(package-install 'markdown-mode)
(package-install 'paradox)
(package-install 'php-mode)
(package-install 'projectile)
(package-install 'sws-mode)
(package-install 'treemacs)

;; deal with big files
(package-install 'vlf)
(require 'vlf-setup)

;;; package.el ends here
