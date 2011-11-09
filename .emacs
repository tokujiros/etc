(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/auto-install")


;;
;; key settings.
;;

(setq
 nw-p      (not window-system)
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

(global-set-key [?\C-1] 'delete-other-windows)
(global-set-key [?\C-2] 'split-window-vertically)
(global-set-key [?\C-3] 'aplit-window-horizontally)
(global-set-key [?\C-0] 'delete-window)

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
;; language setting
;;

(set-language-environment 'utf-8); "Japanese")
(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)


;;
;; shell
;;

(setq shell-file-name "bash")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
;(setq shell-command-switch "-c")
;(modify-coding-system-alist 'process ".*sh\\.exe" '(undecided-dos . shift-jis)) ;euc-japan))

(setq system-uses-terminfo nil)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;;
;; development
;;

;(setq compilation-window-height 20)
(setq compile-command "rake")
;(add-hook 'compilation-mode-hook
;					(lambda ()
;						(set-default-coding-system 'sjis)))


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

(menu-bar-mode 0)
(if (not nw-p)
    (progn
      (tool-bar-mode 0)))

(setq-default tab-width 2)
(set indent-line-function 'indnet-relative-maybe)
(add-hook 'text-mode-hook
					(lambda () (local-set-key "\t" 'self-insert-command)))
(add-hook 'c-mode-hook
					(lambda () (local-set-key "\t" 'self-insert-command)))



;;
;; modes
;;

;; ruby-mode
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files")
(setq auto-mode-alist (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
					(lambda ()
						(inf-ruby-keys)
						(setq tag-width 2)
						(setq indent-tabs-mode t)
						(setq ruby-indent-level 2)
						(setq ruby-deep-indent-parent-style nil)))

;; js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;; haml-mode
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

;; coffee-mode
(require 'coffee-mode)


;;
;; auto-install
;;

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)


;;
;; nav
;;

(require 'nav)
(global-set-key "\C-xn" 'nav)


;;
;; anything
;;

;(require 'anything-startup)


;;
;; ...
;;

(cd "~")
