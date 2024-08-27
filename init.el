;; Don't show the splash screen
(setq inhibit-startup-message t)  ; Comment at end of line!
(setq visible-bell t) ; Flash when bell rings

;; Turn off some unneeded UI elements
(menu-bar-mode -1)  ; Leave this one on if you're a beginner!
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 10)        ; Give some breathing room


;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; Load the Modus Vivendi dark theme
;;(load-theme 'deeper-blue t)

;; Describe symbol: C-h o == It shows documentation for any variable and function in EMACS 

(hl-line-mode) ;; highlights the current line
(blink-cursor-mode -1) ;;stop blinking the cursor

(column-number-mode)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
		shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


(setq org-support-shift-select t)


;;org mode logging config
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
