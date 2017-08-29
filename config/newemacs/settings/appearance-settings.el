(when (member "Source Code Pro" (font-family-list))
  (set-face-attribute 'default nil :font "Source Code Pro-14"))

(global-hl-line-mode +1)

(use-package cyberpunk-theme
  :config
  (load-theme 'cyberpunk t))

(provide 'appearance-settings)
