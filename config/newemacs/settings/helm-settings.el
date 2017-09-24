(use-package helm
  :config
  (setq helm-split-window-default-side 'below)
  (helm-mode 1)
  :bind
  (("M-x" . helm-M-x)))

(use-package helm-ls-git
  :config
  (progn
    (use-package evil-leader
      :config
      (setq recentf-max-menu-items 1000)
      (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
      (evil-leader/set-key
        "ff" 'helm-find-files
        "fr" 'helm-recentf
        "bb" 'helm-buffers-list
        "fp" 'helm-browse-project))))

(provide 'helm-settings)
