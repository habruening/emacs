(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

(tool-bar-mode -1) 

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'move-text)
(setq shift-select-mode t)

;; Key Bindings

(global-set-key (kbd "C-n") 'switch-to-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-w") 'kill-this-buffer)
(global-set-key (kbd "C-S-s") 'write-file)
(global-unset-key (kbd "C-x C-w"))
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)
(global-unset-key (kbd "C-x u"))
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-<up>") 'move-text-up)
(global-set-key (kbd "C-S-<down>") 'move-text-down)

;; Menu

; Windows Menu

; Help Menu
(define-key global-map [menu-bar br_help]
  (cons "Help " (make-sparse-keymap)))

(define-key global-map
  [menu-bar br_help br_keymap-help]
  '("About Function" . describe-key))

; Edit Menu

(define-key global-map [menu-bar br_edit]
  (cons "Edit " (make-sparse-keymap)))
  
(define-key global-map
  [menu-bar br_edit br_paste]
  '("Paste" . yank))

(define-key global-map
  [menu-bar br_edit br_copy]
  '("Copy" . kill-ring-save))
  
(define-key global-map
  [menu-bar br_edit br_undo]
  '("Undo" . undo))
    
; File Menu
(define-key global-map [menu-bar br_file]
  (cons "File " (make-sparse-keymap)))

(define-key global-map
  [menu-bar br_file br_close]
  '("Close" . kill-this-buffer))

(define-key global-map
  [menu-bar br_file br_save-file-as]
  '("Save as" . write-file))

(define-key global-map
  [menu-bar br_file br_save-file]
  '("Save" . save-buffer))

(define-key global-map
  [menu-bar br_file br_open-file]
  '("Open" . find-file))

(define-key global-map
  [menu-bar br_file br_new-file]
  '("New" . switch-to-buffer))
	

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(move-text slime evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
