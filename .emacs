
  (package-initialize)

(setq elisp-config-directory "e:/OneDrive/study/note/elisp/init")

(add-to-list 'load-path  "~/init")
(add-to-list 'load-path  "e:/OneDrive/study/note/elisp/init")


;;(add-to-list 'load-path (expand-file-name "E:/OneDrive/study/note/elisp/init"))
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-org)
(require 'init-custom)

;; ָ���û��Զ������õķ���Ŀ¼���ļ���
(setq custom-file (expand-file-name "e:/OneDrive/study/note/elisp/init" user-emacs-directory))
(load-file custom-file) ;;Ȩ�޲�������ע�͵���


;;ִ������bufffer:
;;`M-x eval-buffer`
















