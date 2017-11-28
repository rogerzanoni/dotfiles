(use-package flycheck
  :init
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode))
  :config
  (global-flycheck-mode))

(provide 'flycheck-settings)
