(use-package helm-gtags
  :config
  (setq
   helm-gtags-ignore-case t
   helm-gtags-auto-update t
   helm-gtags-use-input-at-cursor t
   helm-gtags-pulse-at-cursor t
   helm-gtags-suggested-key-mapping t)
  (evil-leader/set-key
    "tc" 'helm-gtags-create-tags
    "tf" 'helm-gtags-tags-in-this-function
    "td" 'helm-gtags-dwim)
  (add-hook 'dired-mode-hook 'helm-gtags-mode)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
                (helm-gtags-mode)))))

(provide 'helm-gtags-settings)
