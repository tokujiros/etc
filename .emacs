(add-to-list 'load-path "~/.emacs.d/site-list")

(setq
 nt-p      (eq system-type 'windows-nt)
 cygwin-p  (eq system-type 'cygwin)
 windows-p (or nt-p cygwin-p)
 mac-p     (eq system-type 'darwin))

(global-set-key "\C-h" 'delete-backward-char)
;(global-set-key [?\C-:] 'switch-to-buffer)
(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key "\C-\]" 'execute-extended-command)
(global-set-key "\C-cc" 'compile)

(setq-default tab-width 2)
(set indent-line-function 'indnet-relative-maybe)
