(use-package helm-dash
  :config
  (setq helm-dash-browser-func 'eww-browse-url)
  (evil-leader/set-key
    "ds" 'helm-dash
    "di" 'helm-dash-install-docset
    "dd" 'helm-dash-at-point))

(provide 'helm-dash-settings)
