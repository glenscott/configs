;;;; Glen's emacs startup

; minimalist look
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;;; turn on syntax highlighting for HTML files
(add-hook 'sgml-mode-hook 'turn-on-font-lock)

(defalias 'perl-mode 'cperl-mode)
(setq cperl-invalid-face (quote off))

(defvar elisp-path '("~/.elisp/"))
(mapcar '(lambda(p) (add-to-list 'load-path p)) elisp-path)

(require 'php-mode)
(setq php-mode-force-pear t)

; org-mode recommendations from http://orgmode.org/worg/org-tutorials/orgtutorial_dto.php
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(php-mode-force-pear t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

; enable IDO mode
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
