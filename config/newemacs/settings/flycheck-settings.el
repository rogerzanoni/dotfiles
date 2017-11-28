(use-package flycheck
  :init
  (with-eval-after-load 'flycheck
    (add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
    (flycheck-pos-tip-mode))
  :config
  (global-flycheck-mode))

(provide 'flycheck-settings)
