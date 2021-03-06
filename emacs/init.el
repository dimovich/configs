(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/"))

(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)



;disable toolbar
(tool-bar-mode -1)

;disable scrollbar
(scroll-bar-mode -1)

;disable menu
(menu-bar-mode -1)

;maxmized window
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(cider-repl-display-help-banner nil)
 '(clojure-indent-style :always-align)
 '(custom-safe-themes
   (quote
    ("21fb497b14820147b2b214e640b3c5ee19fcadc15bc288e3c16c9c9575d95d66" "bdc90f305ecd4008fd39174adebfcdaf729e38aac1222a872b1f054d97adbc3d" "bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" "6383f86cac149fb10fc5a2bac6e0f7985d9af413c4be356cab4bfea3c08f3b42" default)))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(initial-major-mode (quote clojure-mode))
 '(initial-scratch-message "")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(nrepl-sync-request-timeout 60)
 '(package-selected-packages
   (quote
    (eink-theme sexy-monochrome-theme magit solarized-theme jade-mode sass-mode cider-eval-sexp-fu markdown-mode flycheck solidity-mode clojure-snippets yasnippet org flatui-dark-theme cider zenburn-theme zeal-at-point rainbow-identifiers rainbow-delimiters paredit inf-clojure clojure-mode-extra-font-locking cider-profile)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(safe-local-variable-values
   (quote
    ((cider-figwheel-main-default-options . ":dev")
     (cider-default-cljs-repl . figwheel-main)
     (cider-clojure-cli-global-options . "-A:cider"))))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

;set theme
(load-theme 'zenburn t)

;disable blinking cursor
(blink-cursor-mode (- (*) (*) (*)))

;clojure mode stuff
(defun my-clojure-config ()
  (local-set-key (kbd "C-c o") 'cider-connect)
  (setq cider-show-error-buffer 'only-in-repl))


(add-hook 'clojure-mode-hook 'my-clojure-config)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'eldoc-mode)


(defun my-cider-repl-config ()
  (paredit-mode 1)
  (setq cider-show-error-buffer 'only-in-repl)
  (local-set-key (kbd "C-c c") 'cider-repl-clear-buffer))


(add-hook 'cider-repl-mode-hook 'my-cider-repl-config)

;; Yasnippet
;;(setq yas-snippet-dirs
;;      '("~/.emacs.d/snippets"))

(yas-global-mode 1)



(set-frame-font "Fira Mono 13")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
