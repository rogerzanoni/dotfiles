(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-stickyfunc-mode 1)
(semantic-mode 1)

(defun rz/cedet-hook ()
  (evil-leader/set-key
    "j" 'semantic-ia-fast-jump
    "cs" 'semantic-ia-show-summary))

(add-hook 'c-mode-common-hook 'rz/cedet-hook)
(add-hook 'c-mode-hook 'rz/cedet-hook)
(add-hook 'c++-mode-hook 'rz/cedet-hook)

(require 'ede)
(global-ede-mode)

(provide 'cedet-settings)
