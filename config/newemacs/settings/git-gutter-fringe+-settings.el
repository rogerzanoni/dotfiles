(use-package git-gutter-fringe+
  :config
  (global-git-gutter+-mode t)
  (define-key evil-normal-state-map (kbd "]h") 'git-gutter+-next-hunk)
  (define-key evil-normal-state-map (kbd "[h") 'git-gutter+-previous-hunk))

(provide 'git-gutter-fringe+-settings)
