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
