;;; package --- Summary
;;; Commentary:
;;; Code:
(package-install 'flycheck)
(package-install 'php-mode)
;;(package-install 'php+-mode)
(package-install 'apples-mode)
(package-install 'applescript-mode)
(package-install 'beacon)
(package-install 'sws-mode)
(package-install 'jade-mode)
(package-install 'feature-mode)
(package-install 'google-translate)
(package-install 'inf-mongo)
(setq inf-mongo-command "/opt/local/bin/mongo 127.0.0.1:27017/soulflyer")

(package-install 'paradox)
(package-install 'projectile)
(package-install 'markdown-mode)
(package-install 'treemacs)

;; deal with big files
(package-install 'vlf)
(require 'vlf-setup)

(package-install 'counsel)
;;(package-install 'counsel-osx-app)
;;(require 'counsel-osx-app)

(package-install 'decide)
;; without the require, the decide-roll functions don't appear until after
;; decide-maode is called?
(require 'decide)

(package-install 'grep-a-lot)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)

(package-install 'direx-grep)
(require 'direx-grep)
;;This could be useful, but it has no interactive fns so only good for elisp programming.
;;(package-install 'exiftool)
;;(require 'exiftool)





;;; package.el ends here
