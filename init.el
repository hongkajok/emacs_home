(tool-bar-mode -1)
(menu-bar-mode 1)

;; buffer menu will display in current buffer window
(global-set-key "\C-x\C-b" 'buffer-menu)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package magit
  :ensure t)
