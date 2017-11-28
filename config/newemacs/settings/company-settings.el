(use-package company
  :config
  (global-company-mode 1)
  (setq company-idle-delay 0.5)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 2)
  (setq company-selection-wrap-around t)
  (setq company-tooltip-align-annotations t)
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-code-everywhere t)
  (setq company-dabbrev-code-ignore-case t)
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-irony))
  (delete 'company-semantic company-backends))

(provide 'company-settings)
