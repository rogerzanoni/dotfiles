(use-package helm-projectile
  :config
  (helm-projectile-on)
  (evil-leader/set-key
    "pp" 'helm-projectile-switch-project
    "pb" 'helm-projectile-switch-to-buffer
    "pf" 'helm-projectile-find-file
    "pa" 'helm-projectile-ag
    "pr" 'helm-projectile-recentf))

(provide 'helm-projectile-settings)
