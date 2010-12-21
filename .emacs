(add-to-list 'load-path "~/.emacs.d/site-lisp")
;(add-to-list 'load-path "~/.emacs.d/auto-install")


;;
;; key settings.
;;

(setq
 nt-p      (eq system-type 'windows-nt)
 cygwin-p  (eq system-type 'cygwin)
 windows-p (or nt-p cygwin-p)
 mac-p     (eq system-type 'darwin))

(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key [?\C-:] 'switch-to-buffer)
(global-set-key "\C-\]" 'execute-extended-command)
;(global-set-key [?\C->] 'kmacro-end-and-call-macro)
(global-set-key "\C-cc" 'compile)

(global-set-key "\C-1" 'delete-other-windows)
(global-set-key "\C-2" 'split-window-vertically)
(global-set-key "\C-3" 'aplit-window-horizontally)
(global-set-key "\C-0" 'delete-window)

(global-set-key "\C-x\C-u" 'upcase-region)
(global-set-key "\C-x\C-d" 'downcase-region)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(global-set-key (kbd "M-p") (lambda () (interactive) (times 5 'previous-line)))
(global-set-key (kbd "M-n") (lambda () (interactive) (times 5 'next-line)))
(global-set-key (kbd "M-P") (lambda () (interactive) (times 10 'previous-line)))
(global-set-key (kbd "M-N") (lambda () (interactive) (times 10 'next-line)))
(defun times (count fun)
  (while (>= count 0)
    (funcall fun)
    (setq count (1- count))))

(global-set-key [?\C-\;] 'other-window-or-split)
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window))
  (other-window 1))


;;
;; misc settings.
;;

(line-number-mode t)
(column-number-mode t)
(display-time)

(transient-mark-mode t)
(show-paren-mode t)

(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)

(display-time)

(setq-default tab-width 2)
(set indent-line-function 'indnet-relative-maybe)

(set-language-environment "Japanese")

(setq compilation-window-height 20)
(setqcompile-command "rake")
(add-hook 'compilation-mode-hook
	  (lambda ()
	    (set-default-coding-system 'sjis)))
(add-hook 'ruby-mode-hook
	  (lambda ()
	    (setq tag-width 2)
	    (setq indent-tabs-mode t)
	    (setq ruby-indent-level 2)
	    (setq ruby-deep-indent-parent-style nil)))


;;
;; settings for GUI
;;

(if (window-system)
    (progn
      (menu-bar-mode nil)
      (tool-bar-mode nil))
