
(define-key global-map "\C-o" 'dabbrev-expand)

(setq user-full-name "UENISHI Kota")
(setq user-mail-address "kota@basho.com")

(require 'xcscope)

; erlang-mode, installed by using macports
;                        /usr/local/erlang/R16B03/lib/erlang/lib/tools-2.6.13/emacs
(setq load-path (cons  "/usr/local/erlang/R16B02basho8/lib/erlang/lib/tools-2.6.12/emacs" load-path))
(setq erlang-root-dir "/usr/local/erlang/R16B02basho8/lib/erlang")
(setq exec-path (cons "/usr/local/erlang/R16B02basho8/bin" exec-path))
(require 'erlang-start)
(require 'erlang-flymake)

(setq-default tab-width 4 indent-tabs-mode nil)

; (setq load-path (cons  "/home/kuenishi/.emacs.d" load-path))
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;fullscreen,color,alpha
(if window-system
    (progn ()
           (toggle-scroll-bar nil)
           (tool-bar-mode)
           (setq mac-autohide-menubar-on-maximize t)

           (setq default-frame-alist
                 (append (list
                          '(height . 39)
			  '(width . 120)
                          )))

           ;(require 'color-theme)
           ;(color-theme-initialize)
           ;(color-theme-dark-laptop)

           ;(set-frame-parameter nil 'alpha 90 )
           (set-background-color "Black")
           (set-foreground-color "LightGray")
           (set-cursor-color "Gray")
           )
  )

(setq auto-mode-alist
  (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code." t)
(autoload 'camldebug "cameldeb" "Run the Caml debugger." t)

; inhibit startup-splash screen (where a gnu appears)
(setq inhibit-splash-screen t)

(setq-default indent-tabs-mode nil);; tab ではなく space を使う
