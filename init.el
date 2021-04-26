;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b11699e28cc2f6c34fa6336e67d443be89fadb6a9b60de0b1594f31340ea87e4" "6973f93f55e4a6ef99aa34e10cd476bc59e2f0c192b46ec00032fe5771afd9ad" "d54834a3ec381644880b49fb82ce9d6ccc11997510c7071cfbf3558c8f4b68f6" "3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "76c5b2592c62f6b48923c00f97f74bcb7ddb741618283bdb2be35f3c0e1030e3" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "7c4cfa4eb784539d6e09ecc118428cd8125d6aa3053d8e8413f31a7293d43169" "e964832f274625fa45810c688bdbe18caa75a5e1c36b0ca5ab88924756e5667f" "6bacece4cf10ea7dd5eae5bfc1019888f0cb62059ff905f37b33eec145a6a430" "379a804655efccc13a3d446468992bfdfc30ff27d19cfda6f62c7f9c9e7a8a7d" "f9cae16fd084c64bf0a9de797ef9caedc9ff4d463dd0288c30a3f89ecf36ca7e" "6231254e74298a1cf8a5fee7ca64352943de4b495e615c449e9bb27e2ccae709" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "4e764943cc022ba136b80fa82d7cdd6b13a25023da27528a59ac61b0c4f1d16f" "fa3bdd59ea708164e7821574822ab82a3c51e262d419df941f26d64d015c90ee" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" default))
 '(package-selected-packages
   '(lispy company racket-mode lsp-treemacs helm-lsp lsp-ui flycheck pytest anaconda-mode lsp-mode zoom zenburn-theme yascroll use-package treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired sublimity sorcery-theme smex ranger powerline poet-theme ox-ioslide org-noter org-download org-cliplink org-bullets latex-preview-pane ivy ido-completing-read+ highlight-indent-guides helm grandshell-theme focus evil-escape evil elscreen doom-themes doom-modeline dashboard cyberpunk-theme crux auto-package-update auctex anaphora activity-watch-mode ace-popup-menu))
 '(zoom-mode t nil (zoom))
 '(zoom-size '(0.618 . 0.618)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;disable menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;turn evil mode on
;; Enable Evil
(require 'evil)
(evil-mode 1)

;;enable evil escape mode
(evil-escape-mode 1)

;;enable correct font
(set-frame-font "Source Code Variable" nil t)

;;enable molokai theme
(load-theme 'doom-molokai t)

;; Ctrl + C I will open up this file
(global-set-key (kbd "C-c i") #'crux-find-user-init-file)


;;enable fuzzy search framework snails
(add-to-list 'load-path "~/.emacs.d/elpa/snails")
(require 'snails)

;;enable smex (smart m+x)
  (require 'smex)
  (smex-initialize)

;;replacing smex with helm

(global-set-key (kbd "M-x") 'helm-M-x)


;;keybindings for smex
;;(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;set visible bell instead
(setq ring-bell-function 'ignore)

;;ido mode everywhere enabled
(ido-mode 1)
(ido-everywhere 1)

;;enable ido+ mode
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;;enable sublimity-scroll
(require 'sublimity)
(require 'sublimity-scroll)
;;(require 'sublimity-map) ;; experimental
;;(require 'sublimity-attractive)
(sublimity-mode 1)

;;enable acepopup menu
(ace-popup-menu-mode 1)

;;fix a lag issue 
(setq inhibit-compacting-font-caches t)

;;enable projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;;enable dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
;; Set the title
(setq dashboard-banner-logo-title "Welcome to Lum Emacs")
;; Set the banner
(setq dashboard-startup-banner "~/.emacs.d/lum.png")
;; Content is not centered by default. To center, set
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-navigator t)
(setq dashboard-set-init-info t)
(setq dashboard-set-footer nil)
(setq show-week-agenda-p t)

;;enable doom-modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                 (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay      0.5
          treemacs-directory-name-transformer    #'identity
          treemacs-display-in-side-window        t
          treemacs-eldoc-display                 t
          treemacs-file-event-delay              5000
          treemacs-file-extension-regex          treemacs-last-period-regex-value
          treemacs-file-follow-delay             0.2
          treemacs-file-name-transformer         #'identity
          treemacs-follow-after-init             t
          treemacs-git-command-pipe              ""
          treemacs-goto-tag-strategy             'refetch-index
          treemacs-indentation                   2
          treemacs-indentation-string            " "
          treemacs-is-never-other-window         nil
          treemacs-max-git-entries               5000
          treemacs-missing-project-action        'ask
          treemacs-move-forward-on-expand        nil
          treemacs-no-png-images                 nil
          treemacs-no-delete-other-windows       t
          treemacs-project-follow-cleanup        nil
          treemacs-persist-file                  (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                      'left
          treemacs-recenter-distance             0.1
          treemacs-recenter-after-file-follow    nil
          treemacs-recenter-after-tag-follow     nil
          treemacs-recenter-after-project-jump   'always
          treemacs-recenter-after-project-expand 'on-distance
          treemacs-show-cursor                   nil
          treemacs-show-hidden-files             t
          treemacs-silent-filewatch              nil
          treemacs-silent-refresh                nil
          treemacs-sorting                       'alphabetic-asc
          treemacs-space-between-root-nodes      t
          treemacs-tag-follow-cleanup            t
          treemacs-tag-follow-delay              1.5
          treemacs-user-mode-line-format         nil
          treemacs-user-header-line-format       nil
          treemacs-width                         35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))


(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)

(use-package treemacs-persp
  :after treemacs persp-mode
  :ensure t
  :config (treemacs-set-scope-type 'Perspectives))

;;enable latex preview pane
(latex-preview-pane-enable)


;;enable org bullets
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


;;enable org cliplink and bind Ctrl + X then p i 
(global-set-key (kbd "C-x p i") 'org-cliplink)

;;enable ioslide
(require 'ox-ioslide)
(require 'ox-ioslide-helper)

;;enable using f5 for focus mode
(global-set-key (kbd "<f5>") 'focus-mode)

;;enable word wrap
(global-visual-line-mode t)


;;lsp mode

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (XXX-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

