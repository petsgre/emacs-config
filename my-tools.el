;; 有道词典，非常有用
(use-package
  youdao-dictionary
  :defer 2 
  :ensure t 
  :config (setq url-automatic-caching t) 
  (which-key-add-key-based-replacements "C-x y" "有道翻译") 
  :bind (("C-x y t" . 'youdao-dictionary-search-at-point+) 
         ("C-x y g" . 'youdao-dictionary-search-at-point-posframe) 
         ("C-x y p" . 'youdao-dictionary-play-voice-at-point) 
         ("C-x y r" . 'youdao-dictionary-search-and-replace) 
         ("C-x y i" . 'youdao-dictionary-search-from-input)))

;; 多点编辑
(use-package multiple-cursors
  :ensure t)


;; try可以临时使用这个包，再次重启emacs会删除掉使用try安装的包
(use-package try
  :ensure t)

;; 使用which key 在输入 C-x时会有命令提示
(use-package which-key
  :ensure t
  :config (which-key-mode))


;; 使用swiper在底部显示待选项，可以用 C n C p快速切换
(use-package swiper
  :ensure t
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    ))
;; 自动完成
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

;; 添加redo undo 树
(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode))


;; 选择括号中间的内容
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "s-=") 'er/expand-region))



(use-package counsel
  :ensure t
  )


;; 项目管理
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (setq projectile-completion-system 'ivy))



(use-package magit ; TODO key bindings and such
  :ensure t)

(use-package lsp-mode
  :commands lsp)


(provide 'my-tools)