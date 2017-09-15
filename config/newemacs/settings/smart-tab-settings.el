(use-package smart-tab
  :config
  (use-package company
    :config
    (setq smart-tab-user-provided-completion-function 'company-complete)
    (global-smart-tab-mode 1)))

(provide 'smart-tab-settings)
