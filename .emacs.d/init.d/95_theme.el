;;; color-theme-dakrone.el --- My dark theme

;; Version: 0.0.1
;; Keywords: themes
;; Author: Lee Hinman
;; Maintainer: Lee Hinman <lee@writequit.org>
;; This file is not part of GNU Emacs.

;; color definitions stolen from zenburn
;; colors with +x are lighter, colors with -x are darker
(defvar zenburn-fg "#dcdccc")
(defvar zenburn-bg-1 "#2b2b2b")
(defvar zenburn-bg "#3f3f3f")
(defvar zenburn-bg+1 "#4f4f4f")
(defvar zenburn-bg+2 "#5f5f5f")
(defvar zenburn-red+1 "#dca3a3")
(defvar zenburn-red "#cc9393")
(defvar zenburn-red-1 "#bc8383")
(defvar zenburn-red-2 "#ac7373")
(defvar zenburn-red-3 "#9c6363")
(defvar zenburn-red-4 "#8c5353")
(defvar zenburn-orange "#dfaf8f")
(defvar zenburn-yellow "#f0dfaf")
(defvar zenburn-yellow-1 "#e0cf9f")
(defvar zenburn-yellow-2 "#d0bf8f")
(defvar zenburn-green-1 "#5f7f5f")
(defvar zenburn-green "#7f9f7f")
(defvar zenburn-green+1 "#8fb28f")
(defvar zenburn-green+2 "#9fc59f")
(defvar zenburn-green+3 "#afd8af")
(defvar zenburn-green+4 "#bfebbf")
(defvar zenburn-cyan "#93e0e3")
(defvar zenburn-blue+1 "#94bff3")
(defvar zenburn-blue "#8cd0d3")
(defvar zenburn-blue-1 "#7cb8bb")
(defvar zenburn-blue-2 "#6ca0a3")
(defvar zenburn-blue-3 "#5c888b")
(defvar zenburn-blue-4 "#4c7073")
(defvar zenburn-blue-5 "#366060")
(defvar zenburn-magenta "#dc8cc3")

(defun color-theme-dakrone ()
  "Cornsilk on black.
Includes info, diary, font-lock, eshell, sgml, message, gnus,
widget, custom, latex, ediff."
  (interactive)
  (color-theme-install
   '(color-theme-dakrone
     ((foreground-color . "cornsilk")
      (background-color . "gray10")
      (mouse-color . "black")
      (cursor-color . "white")
      (border-color . "black")
      (background-mode . dark))
     ;;(default ((t (nil))))
     (default ((t (:background "gray10"))))
     ;; (modeline ((t (:foreground "black" :background "wheat"))))
     ;; (mode-line ((t (:foreground "white" :background "darkblack"))))
     ;; (mode-line-inactive ((t (:foreground "gray20" :background "darkblack"))))
     ;; (mode-line-buffer-id ((t (:foreground "white" :background "gray20"))))
     ;; (modeline-mousable ((t (:foreground "black" :background "wheat"))))
     ;; (modeline-mousable-minor-mode ((t (:foreground "black"
     ;; :background "wheat"))))

     ;; copy zenburn's modeline stuff
     (zenburn-strong-1-face ((t (:foreground "#f0dfaf" :weight bold))))
     (zenburn-strong-2-face ((t (:foreground "#dfaf8f" :weight bold))))
     (zenburn-warning-face ((t (:foreground "#e0cf9f" :weight bold :underline t))))
     (zenburn-error-face ((t (:foreground "#bc8383" :weight bold :underline t))))

     (mode-line
      ((t (:foreground "#bfebbf" :background "#2b2b2b"))))
     (mode-line-buffer-id ((t (:inherit zenburn-strong-1-face))))
     (mode-line-inactive
      ((t (:foreground "#5f7f5f"  :background "#2b2b2b"))))

     ;; back to mine
     (highlight ((t (:foreground "wheat" :background "darkslategray"))))
     (minibuffer-prompt ((t (:foreground "cyan"))))
     (bold ((t (:bold t))))
     (italic ((t (:italic t))))
     (bold-italic ((t (:bold t :italic t))))
     (region ((t (:background "dimgray"))))
     (secondary-selection ((t (:background "deepskyblue4"))))
     (magit-item-highlight ((t (:background "gray20"))))
     (underline ((t (:underline t))))
     (info-node ((t (:foreground "yellow" :bold t :italic t))))
     (info-menu-5 ((t (:underline t))))
     (info-xref ((t (:foreground "yellow" :bold t))))
     (diary-face ((t (:foreground "orange"))))
     (calendar-today-face ((t (:underline t))))
     (holiday-face ((t (:background "red"))))
     (show-paren-match-face ((t (:background "deepskyblue4"))))
     (show-paren-mismatch-face ((t (:foreground "white" :background "red"))))
     (paren-face ((t (:foreground "#303030"))))
     (font-lock-comment-face ((t (:foreground "#656763"))))
     (font-lock-string-face ((t (:foreground "#8AE234"))))
     (font-lock-keyword-face ((t (:foreground "cyan1"))))
     (font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
     (font-lock-function-name-face ((t (:foreground "gold"))))
     (font-lock-variable-name-face ((t (:foreground "light salmon"))))
     (font-lock-type-face ((t (:foreground "yellow1"))))
     (font-lock-constant-face ((t (:foreground "salmon"))))
     (font-lock-warning-face ((t (:foreground "gold" :bold t))))
     (blank-space-face ((t (:background "#1e2426"))))
     (blank-tab-face ((t (:foreground "black" :background "cornsilk"))))
     (highline-face ((t (:background "gray35"))))
     ;; can't seem to get colorize-nicks and erc-pals to work together
     ;;     (erc-pal-face ((t (nil))))
     (erc-pal-face ((t (:foreground "indianred"))))
     (eshell-ls-directory-face ((t (:foreground "green" :bold t))))
     (eshell-ls-symlink-face ((t (:foreground "Cyan" :bold t))))
     (eshell-ls-executable-face ((t (:foreground "orange" :bold t))))
     (eshell-ls-readonly-face ((t (:foreground "gray"))))
     (eshell-ls-unreadable-face ((t (:foreground "DarkGrey"))))
     (eshell-ls-special-face ((t (:foreground "Magenta" :bold t))))
     (eshell-ls-missing-face ((t (:foreground "Red" :bold t))))
     (eshell-ls-archive-face ((t (:foreground "Orchid" :bold t))))
     (eshell-ls-backup-face ((t (:foreground "LightSalmon"))))
     (eshell-ls-product-face ((t (:foreground "LightSalmon"))))
     (eshell-ls-clutter-face ((t (:foreground "blue" :bold t))))

     ;; Org
     ;; (org-hide ((t (:foreground "#2e3436"))))
     ;; (org-level-1 ((t (:bold t :foreground "dodger blue" :height 1.5))))
     ;; (org-level-2 ((t (:bold nil :foreground "#edd400" :height 1.2))))
     ;; (org-level-3 ((t (:bold t :foreground "#6ac214" :height 1.0))))
     ;; (org-level-4 ((t (:bold nil :foreground "tomato" :height 1.0))))
     ;; (org-date ((t (:underline t :foreground "magenta3"))))
     ;; (org-footnote  ((t (:underline t :foreground "magenta3"))))
     ;; (org-link ((t (:foreground "skyblue2" :background "#2e3436"))))
     ;; (org-special-keyword ((t (:foreground "brown"))))
     ;; (org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
     ;; (org-block ((t (:foreground "#bbbbbc"))))
     ;; (org-quote ((t (:inherit org-block :slant italic))))
     ;; (org-verse ((t (:inherit org-block :slant italic))))
     ;; (org-todo ((t (:bold t :foreground "Red"))))
     ;; (org-done ((t (:bold t :foreground "ForestGreen"))))
     ;; (org-agenda-structure ((t (:weight bold :foreground "tomato"))))
     ;; (org-agenda-date ((t (:foreground "#6ac214"))))
     ;; (org-agenda-date-weekend ((t (:weight normal :foreground "dodger blue"))))
     ;; (org-agenda-date-today ((t (:weight bold :foreground "#edd400"))))


     (sgml-start-tag-face ((t (:foreground "mediumspringgreen"))))
     (custom-button-face ((t (:foreground "white"))))
     (sgml-ignored-face ((t (:foreground "gray20" :background "gray60"))))
     (sgml-doctype-face ((t (:foreground "orange"))))
     (sgml-sgml-face ((t (:foreground "yellow"))))
     (vc-annotate-face-0046FF ((t (:foreground "wheat" :background "black"))))
     (custom-documentation-face ((t (:foreground "white"))))
     (sgml-end-tag-face ((t (:foreground "greenyellow"))))
     (linemenu-face ((t (:background "gray30"))))
     (sgml-entity-face ((t (:foreground "gold"))))
     (message-header-to-face ((t (:foreground "floral white" :bold t))))
     (message-header-cc-face ((t (:foreground "ivory"))))
     (message-header-subject-face ((t (:foreground "papaya whip" :bold t))))
     (message-header-newsgroups-face ((t (:foreground "lavender blush" :bold t :italic t))))
     (message-header-other-face ((t (:foreground "pale turquoise"))))
     (message-header-name-face ((t (:foreground "light sky blue"))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-separator-face ((t (:foreground "sandy brown"))))
     (message-cited-text-face ((t (:foreground "plum1"))))
     (message-mml-face ((t (:foreground "ForestGreen"))))
     (gnus-group-news-1-face ((t (:foreground "white" :bold t))))
     (gnus-group-news-1-empty-face ((t (:foreground "white"))))
     (gnus-group-news-2-face ((t (:foreground "lightcyan" :bold t))))
     (gnus-group-news-2-empty-face ((t (:foreground "lightcyan"))))
     (gnus-group-news-3-face ((t (:foreground "tan" :bold t))))
     (gnus-group-news-3-empty-face ((t (:foreground "tan"))))
     (gnus-group-news-4-face ((t (:foreground "white" :bold t))))
     (gnus-group-news-4-empty-face ((t (:foreground "white"))))
     (gnus-group-news-5-face ((t (:foreground "wheat" :bold t))))
     (gnus-group-news-5-empty-face ((t (:foreground "wheat"))))
     (gnus-group-news-6-face ((t (:foreground "tan" :bold t))))
     (gnus-group-news-6-empty-face ((t (:foreground "tan"))))
     (gnus-group-news-low-face ((t (:foreground "DarkTurquoise" :bold t))))
     (gnus-group-news-low-empty-face ((t (:foreground "DarkTurquoise"))))
     (gnus-group-mail-1-face ((t (:foreground "white" :bold t))))
     (gnus-group-mail-1-empty-face ((t (:foreground "gray80"))))
     (gnus-group-mail-2-face ((t (:foreground "lightcyan" :bold t))))
     (gnus-group-mail-2-empty-face ((t (:foreground "lightcyan"))))
     (gnus-group-mail-3-face ((t (:foreground "tan" :bold t))))
     (gnus-group-mail-3-empty-face ((t (:foreground "tan"))))
     (gnus-group-mail-low-face ((t (:foreground "aquamarine4" :bold t))))
     (gnus-group-mail-low-empty-face ((t (:foreground "aquamarine4"))))
     (gnus-summary-selected-face ((t (:background "deepskyblue4" :underline t))))
     (gnus-summary-cancelled-face ((t (:foreground "black" :background "gray"))))
     (gnus-summary-high-ticked-face ((t (:foreground "gray70" :bold t))))
     (gnus-summary-low-ticked-face ((t (:foreground "gray70" :bold t))))
     (gnus-summary-normal-ticked-face ((t (:foreground "gray70" :bold t))))
     (gnus-summary-high-ancient-face ((t (:foreground "SkyBlue" :bold t))))
     (gnus-summary-low-ancient-face ((t (:foreground "SkyBlue" :italic t))))
     (gnus-summary-normal-ancient-face ((t (:foreground "SkyBlue"))))
     (gnus-summary-high-unread-face ((t (:bold t))))
     (gnus-summary-low-unread-face ((t (:italic t))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-high-read-face ((t (:foreground "PaleGreen" :bold t))))
     (gnus-summary-low-read-face ((t (:foreground "PaleGreen" :italic t))))
     (gnus-summary-normal-read-face ((t (:foreground "PaleGreen"))))
     (gnus-splash-face ((t (:foreground "gold"))))
     (font-latex-bold-face ((t (nil))))
     (font-latex-italic-face ((t (nil))))
     (font-latex-math-face ((t (nil))))
     (font-latex-sedate-face ((t (:foreground "Gray85"))))
     (font-latex-string-face ((t (:foreground "orange"))))
     (font-latex-warning-face ((t (:foreground "gold"))))
     (widget-documentation-face ((t (:foreground "lime green"))))
     (widget-button-face ((t (:bold t))))
     (widget-field-face ((t (:background "gray20"))))
     (widget-single-line-field-face ((t (:background "gray20"))))
     (widget-inactive-face ((t (:foreground "wheat"))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (custom-invalid-face ((t (:foreground "yellow" :background "red"))))
     (custom-rogue-face ((t (:foreground "pink" :background "black"))))
     (custom-modified-face ((t (:foreground "white" :background "blue"))))
     (custom-set-face ((t (:foreground "blue"))))
     (custom-changed-face ((t (:foreground "wheat" :background "skyblue"))))
     (custom-saved-face ((t (:underline t))))
     (custom-state-face ((t (:foreground "light green"))))
     (custom-variable-tag-face ((t (:foreground "skyblue" :underline t))))
     (custom-variable-button-face ((t (:bold t :underline t))))
     (custom-face-tag-face ((t (:foreground "white" :underline t))))
     (custom-group-tag-face-1 ((t (:foreground "pink" :underline t))))
     (custom-group-tag-face ((t (:foreground "skyblue" :underline t))))
     (swbuff-current-buffer-face ((t (:foreground "red" :bold t))))
     (ediff-current-diff-face-A ((t (:foreground "firebrick" :background "pale green"))))
     (ediff-current-diff-face-B ((t (:foreground "DarkOrchid" :background "Yellow"))))
     (ediff-current-diff-face-C ((t (:foreground "white" :background "indianred"))))
     (ediff-current-diff-face-Ancestor ((t (:foreground "Black" :background "VioletRed"))))
     (ediff-fine-diff-face-A ((t (:foreground "Navy" :background "sky blue"))))
     (ediff-fine-diff-face-B ((t (:foreground "Black" :background "cyan"))))
     (ediff-fine-diff-face-C ((t (:foreground "Black" :background "Turquoise"))))
     (ediff-fine-diff-face-Ancestor ((t (:foreground "Black" :background "Green"))))
     (ediff-even-diff-face-A ((t (:foreground "Black" :background "light grey"))))
     (ediff-even-diff-face-B ((t (:foreground "White" :background "Grey"))))
     (ediff-even-diff-face-C ((t (:foreground "Black" :background "light grey"))))
     (ediff-even-diff-face-Ancestor ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-A ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-B ((t (:foreground "Black" :background "light grey"))))
     (ediff-odd-diff-face-C ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-Ancestor ((t (:foreground "Black" :background "light grey"))))
     (gnus-emphasis-bold ((t (:bold t))))
     (gnus-emphasis-italic ((t (:italic t))))
     (gnus-emphasis-underline ((t (:foreground "white" :background "goldenrod4"))))
     (gnus-emphasis-underline-bold ((t (:foreground "black" :background "yellow" :bold t :underline t))))
     (gnus-emphasis-underline-italic ((t (:foreground "black" :background "yellow" :italic t :underline t))))
     (gnus-emphasis-bold-italic ((t (:bold t :italic t))))
     (gnus-emphasis-underline-bold-italic ((t (:foreground "black" :background "yellow" :bold t :italic t :underline t))))
     (gnus-emphasis-highlight-words ((t (:foreground "yellow" :background "black"))))
     (gnus-signature-face ((t (:italic t))))
     (gnus-header-from-face ((t (:foreground "wheat"))))
     (gnus-header-subject-face ((t (:foreground "wheat" :bold t))))
     (gnus-header-newsgroups-face ((t (:foreground "wheat" :italic t))))
     (gnus-header-name-face ((t (:foreground "white"))))
     (gnus-header-content-face ((t (:foreground "tan" :italic t))))
     (gnus-filterhist-face-1 ((t (nil))))
     (gnus-splash ((t (:foreground "Brown"))))
     (gnus-cite-attribution-face ((t (:italic t))))
     (gnus-cite-face-1 ((t (:foreground "light blue"))))
     (gnus-cite-face-2 ((t (:foreground "light cyan"))))
     (gnus-cite-face-3 ((t (:foreground "light yellow"))))
     (gnus-cite-face-4 ((t (:foreground "light pink"))))
     (gnus-cite-face-5 ((t (:foreground "pale green"))))
     (gnus-cite-face-6 ((t (:foreground "beige"))))
     (gnus-cite-face-7 ((t (:foreground "orange"))))
     (gnus-cite-face-8 ((t (:foreground "magenta"))))
     (gnus-cite-face-9 ((t (:foreground "violet"))))
     (gnus-cite-face-10 ((t (:foreground "medium purple"))))
     (gnus-cite-face-11 ((t (:foreground "turquoise"))))))
  (eval-after-load 'diff-mode
    '(progn
       (set-face-foreground 'diff-added "green4")
       (set-face-background 'diff-added "gray10")
       (set-face-foreground 'diff-removed "red3")
       (set-face-background 'diff-removed "gray10")))

  (eval-after-load 'magit
    '(progn
       (set-face-foreground 'magit-diff-add "green3")
       (set-face-background 'magit-diff-add "gray10")
       (set-face-foreground 'magit-diff-del "red3")
       (set-face-background 'magit-diff-del "gray10")
       (set-face-background 'magit-diff-file-header "gray10")
       (set-face-background 'magit-diff-hunk-header "gray10"))))

;; Show Paren Mode
(setq show-paren-style 'expression)

(defun enable-show-paren-mode ()
  (interactive)
  (show-paren-mode t))

(defun set-show-paren-face-background-dark ()
  (set-face-background 'show-paren-match-face "#232323"))
(defun set-show-paren-face-background-light ()
  (set-face-background 'show-paren-match-face "#dddddd"))

;; clojure-specific colors
(defmacro defclojureface (name color desc &optional others)
  `(defface
     ,name '((((class color)) (:foreground ,color ,@others)))
     ,desc :group 'faces))

;; My custom theme
(defun dakrone-dark ()
  (interactive)
  (if (eq window-system 'ns)
      (set-face-background 'default "gray10"))
  (color-theme-dakrone)
  (set-face-foreground 'paren-face "DimGrey")
  (add-hook 'show-paren-mode-hook 'set-show-paren-face-background-dark)
  (defclojureface clojure-parens       "DimGrey"   "Clojure parens")
  (defclojureface clojure-braces       "DimGrey"   "Clojure braces")
  (defclojureface clojure-brackets     "SteelBlue" "Clojure brackets")
  (defclojureface clojure-keyword      "#729FCF"   "Clojure keywords")
  (defclojureface clojure-namespace    "#c476f1"   "Clojure namespace")
  (defclojureface clojure-java-call    "DarkCyan"   "Clojure Java calls")
  (defclojureface clojure-special      "#1BF21B"   "Clojure special")
  (defclojureface clojure-double-quote "#1BF21B"   "Clojure special")
  (defclojureface clojure-collapsed-fn "Cyan"      "Clojure special"))

(defun dakrone-light ()
  (interactive)
  (load-theme 'tsdh-light)
  (setq frame-background-mode 'light)
  (set-face-foreground 'paren-face "DimGrey")
  (add-hook 'show-paren-mode-hook 'set-show-paren-face-background-light)
  (defclojureface clojure-parens       "#696969"   "Clojure parens")
  (defclojureface clojure-braces       "#696969"   "Clojure braces")
  (defclojureface clojure-brackets     "#4682b4"   "Clojure brackets")
  (defclojureface clojure-keyword      "DarkCyan"  "Clojure keywords")
  (defclojureface clojure-namespace    "#c476f1"   "Clojure namespace")
  (defclojureface clojure-java-call    "#008b8b"   "Clojure Java calls")
  (defclojureface clojure-special      "#006400"   "Clojure special")
  (defclojureface clojure-double-quote "#006400"   "Clojure special")
  (if window-system
      (set-face-foreground 'region nil)))

(defun tweak-clojure-syntax ()
  (mapcar (lambda (x) (font-lock-add-keywords nil x))
          '((("#?['`]*(\\|)"       . 'clojure-parens))
            (("#?\\^?{\\|}"        . 'clojure-brackets))
            (("\\[\\|\\]"          . 'clojure-braces))
            ((":\\w+"              . 'clojure-keyword))
            (("nil\\|true\\|false\\|%[1-9]?" . 'clojure-special))
            (("(\\(\\.[^ \n)]*\\|[^ \n)]+\\.\\|new\\)\\([ )\n]\\|$\\)" 1
              'clojure-java-call)))))

(add-hook 'clojure-mode-hook 'tweak-clojure-syntax)

;; Currently using light-colored theme
(dakrone-dark)
;;(dakrone-light)
(enable-show-paren-mode)
