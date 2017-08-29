(use-package evil-nerd-commenter
  :config
  (evil-leader/set-key
    ";"  'evilnc-comment-or-uncomment-lines
    "ci" 'evilnc-comment-or-uncomment-lines
    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
    "cc" 'evilnc-copy-and-comment-lines
    "cp" 'evilnc-comment-or-uncomment-paragraphs
    "cr" 'comment-or-uncomment-region))

(provide 'evil-nerd-commenter-settings)
