(use-package company-c-headers
  :config
  (require 'company-irony-c-headers)
  (eval-after-load 'company
    '(add-to-list
      'company-backends '(company-irony-c-headers company-irony))))

(add-hook 'c-mode-common-hook 'hs-minor-mode)

(defun c-kr-style ()
  "C mode"
  (interactive)
  (c-set-style "K&R")
  (setq-local indent-tabs-mode t)
  (setq c-syntactic-indentation nil)
  (setq tab-width 4)
  (setq c-basic-offset 4))

(defun c-kernel-style ()
  "C kernel mode"
  (interactive)
  (c-set-style "linux")
  (setq-local indent-tabs-mode t)
  (setq c-syntactic-indentation nil)
  (setq tab-width 8)
  (setq c-basic-offset 8))

(defun cpp-style ()
  "Cpp mode"
  (interactive)
  (c-set-style "stroustrup")
  (setq-local indent-tabs-mode nil)
  (setq c-syntactic-indentation nil)
  (setq tab-width 4)
  (setq c-basic-offset 4))

(add-hook 'c++-mode-hook 'cpp-style)
(add-hook 'c-mode-hook 'c-kernel-style)

(provide 'c-settings)
