(use-package helm-gtags
  :config
  (setq
   helm-gtags-ignore-case t
   helm-gtags-auto-update t
   helm-gtags-use-input-at-cursor t
   helm-gtags-pulse-at-cursor t
   helm-gtags-suggested-key-mapping t)
  (evil-leader/set-key
    "tf" 'helm-gtags-find-tag
    "tr" 'helm-gtags-find-rtag
    "tr" 'helm-gtags-find-tag-from-here
    "ts" 'helm-gtags-find-symbol
    "td" 'helm-gtags-dwim)
  (add-hook 'dired-mode-hook 'helm-gtags-mode)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
                (helm-gtags-mode)))))

(provide 'helm-gtags-settings)
