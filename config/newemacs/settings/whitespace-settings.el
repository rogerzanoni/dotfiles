(use-package whitespace
  :config
  (progn
    (evil-leader/set-key
      "wc" 'whitespace-cleanup
      "wd" 'delete-trailing-whitespace)
    (setq-default indicate-empty-lines t)
    (setq-default show-trailing-whitespace t)
    (setq whitespace-style '(tabs tab-mark))
    (setq whitespace-display-mappings
          '(
            (space-mark 32 [183] [46])
            (space-mark 160 [164] [95])
            (space-mark 2208 [2212] [95])
            (space-mark 2336 [2340] [95])
            (space-mark 3616 [3620] [95])
            (space-mark 3872 [3876] [95])
            (newline-mark 10 [182 10])
            (tab-mark 9 [9702 9] [92 9])))
    (global-whitespace-mode t)))

(provide 'whitespace-settings)
