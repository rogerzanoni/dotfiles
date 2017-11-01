(use-package elpy
  :config
  (delete `elpy-module-highlight-indentation elpy-modules)
  (elpy-enable))

(provide 'elpy-settings)
