;; 高亮光标所在行的文本
;;(setq inhibit-splash-screen t)

;;关闭默认打开的文件，并打开一个 scratch 文件
(add-to-list 'default-frame-alist
	     '(font . "Menlo-16"))



;;全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;设置光标的样式 ;;每一个buffer-local都有一个值，因此可以使用setq-default
(setq-default cursor-type 'bar) 
 
;; 行标
(global-linum-mode 1)


;; 处理缩进的问题
(electric-indent-mode t)

(provide 'init-ui)