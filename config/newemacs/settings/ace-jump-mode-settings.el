(use-package ace-jump-mode
  :config
  (use-package evil-leader
    :config
    (evil-leader/set-key
        "<SPC>" 'evil-ace-jump-char-mode
        "," 'ace-jump-line-mode)))

(provide 'ace-jump-mode-settings)
