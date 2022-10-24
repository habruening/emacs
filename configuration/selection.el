; The grey for selected text is not visible enough. Change it.

(set-face-attribute 'region nil :background "#11AAFF")
(set-face-attribute 'region nil :foreground "#FFFFFF")

; Normally when text is copied it will be unselected. Disable this.
; Found on https://www.reddit.com/r/emacs/comments/1vdumz/emacs_to_keep_selection_after_copy/

(defadvice kill-ring-save (after keep-transient-mark-active ())
  "Override the deactivation of the mark."
  (setq deactivate-mark nil))
(ad-activate 'kill-ring-save)
