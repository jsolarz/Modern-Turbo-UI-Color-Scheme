;;; nord-turbo-pascal-modern-theme.el --- Nord Turbo Pascal Modern theme

(deftheme nord-turbo-pascal-modern
  "Nord Turbo Pascal Modern color theme")

(custom-theme-set-faces
 'nord-turbo-pascal-modern
 '(default ((t (:foreground "#ECEFF4" :background "#252b36"))))
 '(cursor ((t (:background "#FFD75F"))))
 '(region ((t (:background "#2E4A7F" :foreground "#FFFFFF"))))
 '(highlight ((t (:background "#3b4252"))))
 '(line-number ((t (:foreground "#4C566A"))))
 '(line-number-current-line ((t (:foreground "#ECEFF4"))))
 '(font-lock-keyword-face ((t (:foreground "#ECEFF4" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#FFD75F"))))
 '(font-lock-string-face ((t (:foreground "#88C0D0"))))
 '(font-lock-number-face ((t (:foreground "#E5F6FF"))))
 '(font-lock-comment-face ((t (:foreground "#616E88" :slant italic))))
 '(font-lock-preprocessor-face ((t (:foreground "#FF5C57"))))
 '(font-lock-function-name-face ((t (:foreground "#FFD75F"))))
 '(font-lock-type-face ((t (:foreground "#FFD75F"))))
 '(font-lock-constant-face ((t (:foreground "#E5F6FF"))))
 '(font-lock-warning-face ((t (:foreground "#FF5C57"))))
 '(mode-line ((t (:foreground "#FFFFFF" :background "#808080"))))
 '(mode-line-inactive ((t (:foreground "#C0C0C0" :background "#808080"))))
 '(fringe ((t (:background "#252b36"))))
 '(whitespace-space ((t (:foreground "#4C566A"))))
 '(whitespace-tab ((t (:foreground "#4C566A")))))

(provide-theme 'nord-turbo-pascal-modern)
