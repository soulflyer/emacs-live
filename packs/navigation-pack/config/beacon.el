(package-install 'beacon)
(beacon-mode 1)

(setq beacon-size 60)
(setq beacon-color "yellow")
(setq beacon-blink-delay 0.3)
(setq beacon-blink-duration 0.1)
(setq beacon-dont-blink-major-modes '(cider-repl-mode))
(setq beacon-blink-when-window-scrolls t)
