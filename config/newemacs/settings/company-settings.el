(use-package company
  :config
  (global-company-mode 1)
  (setq company-idle-delay 0.5)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 2)
  (setq company-selection-wrap-around t)
  (setq company-tooltip-align-annotations t)
  (delete 'company-semantic company-backends))

(provide 'company-settings)
