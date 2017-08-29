(use-package company-qml
  :config
  (use-package company
    :config
    (add-to-list 'company-backends 'company-qml)))

(provide 'company-qml-settings)
