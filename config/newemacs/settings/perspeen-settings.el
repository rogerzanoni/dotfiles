(use-package perspeen
  :ensure t
  :config
  (global-set-key (kbd "M-c") 'perspeen-create-ws)
  (global-set-key (kbd "M-d") 'perspeen-delete-ws)
  (global-set-key (kbd "M-<right>") 'perspeen-next-ws)
  (global-set-key (kbd "M-<left>") 'perspeen-next-ws)
  (global-set-key (kbd "M-1") (lambda () (interactive) (perspeen-goto-ws 1)))
  (global-set-key (kbd "M-2") (lambda () (interactive) (perspeen-goto-ws 2)))
  (global-set-key (kbd "M-3") (lambda () (interactive) (perspeen-goto-ws 3)))
  (global-set-key (kbd "M-4") (lambda () (interactive) (perspeen-goto-ws 4)))
  (global-set-key (kbd "M-5") (lambda () (interactive) (perspeen-goto-ws 5)))
  (global-set-key (kbd "M-6") (lambda () (interactive) (perspeen-goto-ws 6)))
  (global-set-key (kbd "M-7") (lambda () (interactive) (perspeen-goto-ws 7)))
  (global-set-key (kbd "M-8") (lambda () (interactive) (perspeen-goto-ws 8)))
  (global-set-key (kbd "M-9") (lambda () (interactive) (perspeen-goto-ws 9)))

  (set-face-attribute 'perspeen-selected-face nil :weight 'bold :foreground "black" :background "cyan")

  (perspeen-mode))

(provide 'perspeen-settings)
