(use-package qml-mode
  :config
   (autoload 'qml-mode "qml-mode" "Editing Qt Declarative." t)
   (add-to-list 'auto-mode-alist '("\\.qml$" . qml-mode)))

(provide 'qml-mode-settings)
