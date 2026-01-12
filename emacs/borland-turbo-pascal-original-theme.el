;;; borland-turbo-pascal-original-theme.el --- Borland Turbo Pascal Original theme

(deftheme borland-turbo-pascal-original
  "Borland Turbo Pascal Original color theme")

(custom-theme-set-faces
 'borland-turbo-pascal-original
 '(default ((t (:foreground "#AAAAAA" :background "#0000AA"))))
 '(cursor ((t (:background "#FFFFFF"))))
 '(region ((t (:background "#5555AA" :foreground "#FFFFFF"))))
 '(highlight ((t (:background "#0000CC"))))
 '(line-number ((t (:foreground "#8888AA"))))
 '(line-number-current-line ((t (:foreground "#FFFFFF"))))
 '(font-lock-keyword-face ((t (:foreground "#FFFFFF" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#AAAAAA"))))
 '(font-lock-string-face ((t (:foreground "#00FFFF"))))
 '(font-lock-number-face ((t (:foreground "#FF00FF"))))
 '(font-lock-comment-face ((t (:foreground "#00FF00"))))
 '(font-lock-preprocessor-face ((t (:foreground "#FF0000"))))
 '(font-lock-function-name-face ((t (:foreground "#FFFF00"))))
 '(font-lock-type-face ((t (:foreground "#FFFF00"))))
 '(font-lock-constant-face ((t (:foreground "#FF00FF"))))
 '(font-lock-warning-face ((t (:foreground "#FF0000"))))
 '(font-lock-operator-face ((t (:foreground "#FFFF00"))))
 '(mode-line ((t (:foreground "#FFFFFF" :background "#808080"))))
 '(mode-line-inactive ((t (:foreground "#C0C0C0" :background "#808080"))))
 '(fringe ((t (:background "#0000AA"))))
 '(whitespace-space ((t (:foreground "#000088"))))
 '(whitespace-tab ((t (:foreground "#000088")))))

(provide-theme 'borland-turbo-pascal-original)
