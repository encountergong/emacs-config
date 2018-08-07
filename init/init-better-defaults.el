(setq ring-bell-function 'ignore)

;; reverts any buffer associated with a file when the file changes on disk. 
(global-auto-revert-mode t)



;;简写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8xg" "yizhanxingguang")
					    ("8ms" "Microsoft")
					    ))

(setq make-backup-files nil)
(setq make-save-default nil)
;;去除掉自动备份文件--文件名以波浪线结尾
(setq make-backup-files nil)

;; 启用 开启EMACS时是全屏

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25) ;;最多同时显示25个

;; 启用 括号提示
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;这个会在 模式（`M-h m`） 里面加入一个钩子--放入一个新的模式


;; 启用 在选中内容后重新编辑会自动删除选中的内容
(delete-selection-mode t)

(setq ring-bell-function 'ignore)

;; 启用 在选中内容后重新编辑会自动删除选中的内容
(delete-selection-mode t)

;; 启用 括号提示
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;这个会在 模式（`M-h m`） 里面加入一个钩子--放入一个新的模式


;;简写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8xg" "yizhanxingguang")
					    ("8ms" "Microsoft")
					    ))





						


(provide 'init-better-defaults)
