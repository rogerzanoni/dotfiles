(use-package js2-mode
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.js" . js2-mode))
    (add-hook 'js2-mode-hook '(lambda ()
                                (setq tab-width 4)))))

(provide 'js2-mode-settings)
