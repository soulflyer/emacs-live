(setq org-priority-faces (quote ((?A :foreground "#e000a0")
                                 (?B :foreground "#e00000")
                                 (?C :foreground "#f04000")
                                 (?D :foreground "#c0c000")
                                 (?E :foreground "#00f000")
                                 (?F :foreground "#00c0e0")
                                 (?G :foreground "#0000f4")
                                 (?H :foreground "#6040a0")
                                 (?I :foreground "#575757"))))

(add-hook
 'org-mode-hook
 (lambda ()
   (set-face-attribute 'org-level-1 nil :foreground "#80ff00")
   (set-face-attribute 'org-level-2 nil :foreground "#70f000")
   (set-face-attribute 'org-level-3 nil :foreground "#60e000")
   ;; Something weird going on with org-level-4. Inherits something that causes it to dim
   ;; setting it with custom-set faces fixes it.
   ;; Look in .emacs.d/etc/custom/custom-configuration.el
   (set-face-attribute 'org-level-4 nil :foreground "#50d000")
   (set-face-attribute 'org-level-5 nil :foreground "#50c020")
   (set-face-attribute 'org-level-6 nil :foreground "#50b030")
   (set-face-attribute 'org-level-7 nil :foreground "#50a040")
   (set-face-attribute 'org-level-8 nil :foreground "#509050")))


;;(custom-set-faces '(org-agenda-dimmed-todo-face ((t (:foreground "#7f7f7f")))))
