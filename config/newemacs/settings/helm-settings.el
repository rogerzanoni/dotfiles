(use-package helm
  :config
  (helm-mode 1))

(use-package helm-ls-git
  :config
  (progn
    (use-package evil-leader
      :config
      (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
      (evil-leader/set-key
        "ff" 'helm-find-files
        "fr" 'helm-recentf
        "bb" 'helm-buffers-list
        "fp" 'helm-browse-project))))

(provide 'helm-settings)
