(require 'cl)
(when (>= emacs-major-version 24)
  
  (package-initialize)
  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  )


;;add whatever packages you want here. Keeping the order the same!
(defvar gongranran/packages '(
			      company ;;1
			      monokai-theme;;2
			      hungry-delete;;3
			      swiper;;4
			      counsel  ;;5 会在弹出buffer处弹出小窗口
			      smartparens;;6
			      js2-mode   ;;7
			      nodejs-repl ;;8
			      popwin ;;9 Jump cursor to the new windows when you open it.
			      exec-path-from-shell
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
;;let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;1
;; 代码补全
(global-company-mode t)

;;2
(load-theme 'monokai t)

;;3
(require 'hungry-delete)
(global-hungry-delete-mode)

;;4
(ivy-mode 1) ;;It comes with the swiper package
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


;;5

;;6
(smartparens-global-mode t)

;;7
;;config js2mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;;8

;;9
(require 'popwin)
(popwin-mode t)


(provide 'init-packages)
