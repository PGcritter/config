(setq js2-highlight-level 3)
(setq js2-basic-offset 2)
(setq js2-idle-timer-delay 1)


(require-package 'js2-mode)
(require-package 'ac-js2)
(require-package 'tern)
(require-package 'tern-auto-complete)

(after 'js2-mode-autoloads
  (setq auto-mode-alist (cons '("\\.js\\'" . js2-mode) auto-mode-alist)))

(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(after 'tern
  (require 'tern-auto-complete)
  (tern-ac-setup))


(require-package 'nodejs-repl)


(require-package 'jade-mode)


(require-package 'skewer-mode)
(skewer-setup)


(provide 'init-web)
