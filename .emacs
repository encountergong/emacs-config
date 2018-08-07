(setq elisp-config-directory "E:/OneDrive/study/note/elisp")


(add-to-list 'load-path (expand-file-name "E:/OneDrive/study/note/elisp"))
(provide 'test)
(require 'test)


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  )
(require 'cl)

;;add whatever packages you want here
(defvar gongranran/packages '(
			      company
			      monokai-theme
			      hungry-delete
			      swiper
			      counsel  ;;���ڵ���buffer������С����
			      smartparens
			      js2-mode
			      nodejs-repl
			      ;;exec-path-from-shell
			      ) "Default packages")

(setq package-selected-packages gongranran/packages)

(defun gongranran/packages-installed-p ()
  (loop for pkg in gongranran/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))
(unless (gongranran/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg gongranran/packages)
    (when (not (package-installed-p pkg))
      
      (package-install pkg))))

(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
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

;; for Agenda
(setq org-agenda-files '("E:/OneDrive/study/note/elisp/agenda.org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(company-idle-delay 0.8)
 '(company-minimum-prefix-length 1)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(package-selected-packages (quote (smex monokai-theme hungry-delete company)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "����" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
 '(js2-external-variable ((t (:foreground "gray")))))
;;ִ������bufffer:
;;`M-x eval-buffer`


;; ��������������
(electric-indent-mode t)

;; ������������е��ı�
(setq inhibit-splash-screen t)


;; �б�
(global-linum-mode 1)

;; �Զ��������ļ�
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;; ���벹ȫ
(global-company-mode t)

;;���ù�����ʽ ;;ÿһ��buffer-local����һ��ֵ����˿���ʹ��setq-default
(setq-default cursor-type 'bar)

(load-theme 'monokai t)
;;ȥ�����Զ������ļ�--�ļ����Բ����߽�β
(setq make-backup-files nil)

;;��`org-mode`���������ע��Ҳ���﷨����
(require 'org)
(setq org-src-fontify-natively t)

;;���á�����򿪵��ļ��� ����

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25) ;;���ͬʱ��ʾ25��
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; ���� ��ѡ�����ݺ����±༭���Զ�ɾ��ѡ�е�����
(delete-selection-mode t)

;; ���� ����EMACSʱ��ȫ��

;; ���� ������ʾ
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;������� ģʽ��`M-h m`�� �������һ������--����һ���µ�ģʽ


;;
(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smartparens-config)
(smartparens-global-mode t)

;;config js
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
