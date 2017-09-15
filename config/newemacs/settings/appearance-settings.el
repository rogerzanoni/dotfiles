(when (member "Source Code Pro" (font-family-list))
  (set-face-attribute 'default nil :font "Source Code Pro-14"))

(global-hl-line-mode +1)

(use-package moe-theme
  :config
  (setq moe-theme-highlight-buffer-id t)
  (moe-theme-set-color 'cyan)
  (load-theme 'moe-dark t))

(provide 'appearance-settings)
