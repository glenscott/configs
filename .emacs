;;;; Glen's emacs startup

;;;; turn on syntax highlighting for HTML files
(add-hook 'sgml-mode-hook 'turn-on-font-lock)


(defalias 'perl-mode 'cperl-mode)
(setq cperl-invalid-face (quote off))

(defvar elisp-path '("~/.elisp/"))
(mapcar '(lambda(p) (add-to-list 'load-path p)) elisp-path)
(require 'php-mode)

; org-mode recommendations from http://orgmode.org/worg/org-tutorials/orgtutorial_dto.php
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))
