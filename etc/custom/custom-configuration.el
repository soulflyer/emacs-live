(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-notify-p t)
 '(haskell-process-type (quote ghci))
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save t)
 '(notmuch-saved-searches
   (quote
    ((:name "inbox" :query "tag:inbox" :key "i")
     (:name "unread" :query "tag:unread" :key "u")
     (:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a")
     (:name "quentin" :query "quentin"))))
 '(openwith-associations
   (quote
    (("\\.pdf\\'" "open"
      (file))
     ("\\.mp3\\'" "xmms"
      (file))
     ("\\.\\(?:mpe?g\\|avi\\|wmv\\)\\'" "mplayer"
      ("-idx" file))
     ("\\.\\(?:jp?g\\|png\\)\\'" "open"
      (file)))))
 '(same-window-buffer-names (quote ("")))
 '(sclang-auto-scroll-post-buffer t)
 '(sclang-eval-line-forward nil)
 '(sclang-help-path (quote ("/Applications/SuperCollider/Help")))
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-added ((t (:foreground "Green"))))
 '(diff-removed ((t (:foreground "Red"))))
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(eval-sexp-fu-flash ((((class color) (background dark)) (:background "grey15" :foreground "DeepPink3"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))))
 '(org-agenda-dimmed-todo-face ((t (:foreground "#7f7f7f"))))
 '(whitespace-indentation ((t (:background "color-235" :foreground "red")))))
