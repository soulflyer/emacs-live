;; Clojure Pack
(package-install 'rainbow-delimiters)
(require 'rainbow-delimiters)
(require 'paredit)

(package-install 'uuid)
(require 'uuid)

(package-install 'edn)
(require 'edn)


(live-load-config-file "paredit-conf.el")
(live-load-config-file "mic-paren-conf.el")
(live-load-config-file "auto-complete-conf.el")

(live-load-config-file "clojure-conf.el")
(live-load-config-file "clojure-indent.el")
(live-load-config-file "cider-conf.el")
(live-load-config-file "highlight-flash-conf.el")


;;(live-load-config-file "overtone-conf.el") TODO - fix for cider
