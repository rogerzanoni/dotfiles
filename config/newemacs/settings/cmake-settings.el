(use-package cmake-mode
  :init
  (progn
    (setq auto-mode-alist
          (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                    ("\\.cmake\\'" . cmake-mode))
                  auto-mode-alist))))

(provide 'cmake-settings)
