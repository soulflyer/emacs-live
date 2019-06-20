;;(live-add-pack-lib "multiple-cursors")
(package-install 'multiple-cursors)
(setq mc/list-file (concat live-etc-dir "multiple-cursors-prefs.el"))
(require 'multiple-cursors)
