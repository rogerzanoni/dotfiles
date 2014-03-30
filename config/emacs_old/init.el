(package-initialize nil)

;; Override the packages with the git version of Org

(add-to-list 'load-path "~/.elisp/org-mode/lisp")
(add-to-list 'load-path "~/.elisp/org-mode/contrib/lisp")

;; Add marmalade repository
(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/") t)

;; Add melpa repository
(add-to-list 'package-archives
    '("melpa" .
      "http://melpa.org/packages/") t)

;; Load the rest of the packages

(package-initialize t)
(setq package-enable-at-startup nil)
(require 'org)
(require 'ob-tangle)

(defvar init-source-org-file (expand-file-name "zanoni.org" user-emacs-directory)
  "The file that our emacs initialization comes form")

(defvar init-source-el-file (expand-file-name "zanoni.el" user-emacs-directory)
  "The file that our emacs initialization is generated into")

(if (file-exists-p init-source-org-file)
    (if (and (file-exists-p init-source-el-file)
             (time-less-p (nth 5 (file-attributes init-source-org-file)) (nth 5 (file-attributes init-source-el-file))))
        (load-file init-source-el-file)
      (if (fboundp 'org-babel-load-file)
          (org-babel-load-file init-source-org-file)
        (message "Function not found: org-babel-load-file")
        (load-file init-source-el-file)))
  (error "Init org file '%s' missing." init-source-org-file))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
