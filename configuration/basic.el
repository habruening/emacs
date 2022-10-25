; Disable the welcome message.
(setq inhibit-startup-message t)

; Scratch buffers shall be empty when created.
(setq initial-scratch-message nil)

; Don't use the toolbar
(tool-bar-mode -1) 

; Disable the annoying beep
(setq visible-bell 1)

; Use Undo Tree
(global-undo-tree-mode)
(global-set-key (kbd "C-z") 'undo-tree-visualize)

