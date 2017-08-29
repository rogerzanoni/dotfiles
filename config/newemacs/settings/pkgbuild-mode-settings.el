(use-package pkgbuild-mode
  :config
  (autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
  (setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                                auto-mode-alist)))

(provide 'pkgbuild-mode-settings)
