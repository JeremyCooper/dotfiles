(require 'package)
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;;;Evil mode
(require 'evil)
(evil-mode 1)

;;;Clojure
(defvar cloj-packages '(better-defaults
                        projectile
                        clojure-mode
                        cider))
(dolist (p cloj-packages)
  (unless (package-installed-p p)
    (package-install p)))

;(setq inferior-lisp-program "/usr/bin/sbcl")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (haskell-mode slime evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; '(package-archives
;;	(quote
;;	  (("gnu" . "http://elpa.gnu.org/packages/")
;;	   ("melpa-stable" . "http://stable.melpa.org/packages/"))))
