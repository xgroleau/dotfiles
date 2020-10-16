;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "Xavier Groleau"
      user-mail-address "xavgroleau@gmail.com")


;; Font settings
(setq doom-font (font-spec :family "FiraCode NF" :size 16)
      doom-big-font (font-spec :family "FiraCode NF" :size 22))

;; Theme
(setq doom-theme 'doom-gruvbox)

;; Org directory
(setq org-directory "~/org/")

;; Line number settings
(setq display-line-numbers-type 'relative)

;; Exit settings
(setq confirm-kill-emacs nil)




;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


(map!
 :n "{" #'evil-scroll-line-to-center      #'evil-backward-paragraph
 :n "}" #'evil-scroll-line-to-center      #'evil-forward-paragraph)
