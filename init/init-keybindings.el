(provide 'init-keybindings)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


;;启用“最近打开的文件” 功能
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25) ;;最多同时显示25个
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 自动打开配置文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs"))
(global-set-key (kbd "<f2>") 'open-my-init-file)


;; for Agenda
(setq org-agenda-files '("E:/OneDrive/study/note/elisp/agenda.org"))
(global-set-key (kbd "C-c a") 'org-agenda)

