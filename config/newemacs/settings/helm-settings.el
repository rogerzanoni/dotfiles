(use-package helm
  :config
  (setq helm-split-window-in-side-p t
        helm-move-to-line-cycle-in-source t
        helm-buffer-skip-remote-checking t
        helm-mode-fuzzy-match t
        helm-buffers-fuzzy-matching t
        helm-buffer-skip-remote-checking t
        helm-M-x-fuzzy-match t
        helm-imenu-fuzzy-match t
        helm-lisp-fuzzy-completion t
        helm-buffer-skip-remote-checking t
        helm-locate-fuzzy-match t
        )
  (helm-mode 1)
  :bind
  (("M-x" . helm-M-x)
   ("M-y" . helm-show-kill-ring)))

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
