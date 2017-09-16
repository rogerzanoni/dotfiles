(use-package counsel
  :config
  (use-package evil-leader
    :config
    (evil-leader/set-key
      "ca" 'counsel-ag
      "cg" 'counsel-git)))

(use-package counsel-projectile
  :config
  (counsel-projectile-on)
  (evil-leader/set-key
    "pp" 'counsel-projectile-switch-project
    "pb" 'counsel-projectile-switch-to-buffer
    "pf" 'counsel-projectile-find-file
    "pa" 'counsel-projectile-ag))

(provide 'counsel-settings)
