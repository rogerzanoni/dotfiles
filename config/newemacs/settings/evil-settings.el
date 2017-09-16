(use-package evil
  :config
  (evil-mode t)
  (setq evil-normal-state-cursor '(box "DarkGoldenrod2")
        evil-insert-state-cursor '(bar "chartreuse3")
        evil-visual-state-cursor '(box "gray")))

(defun rz/vsplit-last-buffer (prefix) ; split functions copied from sacha's config
  "Split the window vertically and display the previous buffer."
  (interactive "p")
  (split-window-vertically)
  (other-window 1 nil)
  (balance-windows)
  (unless prefix
    (switch-to-next-buffer)))

(defun rz/hsplit-last-buffer (prefix)
  "Split the window horizontally and display the previous buffer."
  (interactive "p")
  (split-window-horizontally)
  (other-window 1 nil)
  (balance-windows)
  (unless prefix (switch-to-next-buffer)))

(use-package evil-leader
  :config
  (setq evil-leader/in-all-states t)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "h" 'rz/vsplit-last-buffer
    "v" 'rz/hsplit-last-buffer
    "q" 'ff-find-other-file
    "a" 'mark-whole-buffer)
  (global-evil-leader-mode t)
  (kill-buffer "*Messages*")) ; https://github.com/cofi/evil-leader/issues/10

(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-normal-state-map (kbd "<left>") 'windmove-left)
(define-key evil-normal-state-map (kbd "<right>") 'windmove-right)
(define-key evil-normal-state-map (kbd "<up>") 'windmove-up)
(define-key evil-normal-state-map (kbd "<down>") 'windmove-down)

(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

; shift enhancements copied from https://github.com/djoyner/dotfiles/blob/888a1f0d5cdd9a15a0bfe93a96cdd1fc5d7f2d57/emacs/lisp/evil-config.el#L36-L40
(define-key evil-visual-state-map (kbd ">") 'rz/evil-shift-right-visual)
(define-key evil-visual-state-map (kbd "<") 'rz/evil-shift-left-visual)
(define-key evil-visual-state-map [tab] 'rz/evil-shift-right-visual)
(define-key evil-visual-state-map [S-tab] 'rz/evil-shift-left-visual)

(defun rz/evil-shift-left-visual ()
  (interactive)
  (evil-shift-left (region-beginning) (region-end))
  (evil-normal-state)
  (evil-visual-restore))

(defun rz/evil-shift-right-visual ()
  (interactive)
  (evil-shift-right (region-beginning) (region-end))
  (evil-normal-state)
  (evil-visual-restore))

(provide 'evil-settings)
