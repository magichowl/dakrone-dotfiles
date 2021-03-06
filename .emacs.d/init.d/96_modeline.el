;; Helper function
(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))

;; Extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-folder-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-position-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-minor-mode-face)
(make-face 'mode-line-process-face)
(make-face 'mode-line-80col-face)

;; Mode line setup
(defun modeline-setup ()
  (setq-default
   mode-line-format
   '(; Position, including warning for 80 columns
     (:propertize "%4l:" face mode-line-position-face)
     (:eval (propertize "%3c" 'face
                        (if (>= (current-column) 80)
                            'mode-line-80col-face
                          'mode-line-position-face)))
     ;; emacsclient [default -- keep?]
     mode-line-client
     " "
     ;; read-only or modified status
     (:eval
      (cond (buffer-read-only
             (propertize " RO " 'face 'mode-line-read-only-face))
            ((buffer-modified-p)
             (propertize " ** " 'face 'mode-line-modified-face))
            (t " ")))
     " "
     ;; directory and buffer/file name
     (:propertize (:eval (shorten-directory default-directory 30))
                  face mode-line-folder-face)
     (:propertize "%b"
                  face mode-line-filename-face)
     ;; narrow [default -- keep?]
     " %n "
     ;; mode indicators: vc, recursive edit, major mode, minor modes, process, global
     (vc-mode vc-mode)
     (t erc-modified-channels-object)
     " %["
     (:propertize mode-name
                  face mode-line-mode-face)
     "%] "
     (:eval (propertize (format-mode-line minor-mode-alist)
                        'face 'mode-line-minor-mode-face))
     (:propertize mode-line-process
                  face mode-line-process-face)
     " "
     (global-mode-string global-mode-string)
     " "
     )))

(defun modeline-setup-face-light ()
  ;; (set-face-attribute 'mode-line
  ;;                     :inherit 'mode-line-face
  ;;                     ;; :foreground "gray60" :background "gray20"
  ;;                     ;; :inverse-video nil
  ;;                     ;; :family "Bitstream Vera Sans Mono"
  ;;                     :height 85
  ;;                     ;;:box '(:line-width 3 :color "gray20" :style nil)
  ;;                     )
  ;; (set-face-attribute 'mode-line-inactive nil
  ;;                     :foreground "gray40" :background "gray15"
  ;;                     :inverse-video nil
  ;;                     :family "Bitstream Vera Sans Mono" :height 85
  ;;                     :box '(:line-width 3 :color "gray15" :style nil))
  (set-face-attribute 'mode-line-read-only-face nil
                      :inherit 'mode-line-face
                      :foreground "#4271ae"
                      :height 95 :box '(:line-width 2 :color "#4271ae"))
  (set-face-attribute 'mode-line-modified-face nil
                      :inherit 'mode-line-face
                      :foreground "#c82829"
                      :background "#ffffff"
                      :height 95
                      :box '(:line-width 2 :color "#c82829"))
  (set-face-attribute 'mode-line-folder-face nil
                      :inherit 'mode-line-face
                      :height 95
                      :foreground "gray10")
  (set-face-attribute 'mode-line-filename-face nil
                      :inherit 'mode-line-face
                      :foreground "#30609d"
                      :height 95
                      :weight 'bold)
  (set-face-attribute 'mode-line-position-face nil
                      :inherit 'mode-line-face
                      :height 95
                      )
  (set-face-attribute 'mode-line-mode-face nil
                      :inherit 'mode-line-face
                      :height 95
                      :foreground "gray10")
  (set-face-attribute 'mode-line-minor-mode-face nil
                      :inherit 'mode-line-mode-face
                      :foreground "gray10"
                      :height 85)
  (set-face-attribute 'mode-line-process-face nil
                      :inherit 'mode-line-face
                      :height 95
                      :foreground "#718c00")
  (set-face-attribute 'mode-line-80col-face nil
                      :inherit 'mode-line-position-face
                      :height 95
                      :foreground "black" :background "#eab700"))

(defun modeline-setup-face-dark ()
  (set-face-attribute 'mode-line nil
                      :foreground "gray60" :background "gray20"
                      :inverse-video nil
                      :family "Bitstream Vera Sans Mono"
                      :height 85
                      :box '(:line-width 3 :color "gray20" :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground "gray40" :background "gray15"
                      :inverse-video nil
                      :family "Bitstream Vera Sans Mono" :height 85
                      :box '(:line-width 3 :color "gray15" :style nil))
  (set-face-attribute 'mode-line-read-only-face nil
                      :inherit 'mode-line-face
                      :foreground "#4271ae"
                      :family "Bitstream Vera Sans Mono" :height 95
                      :box '(:line-width 2 :color "#4271ae"))
  (set-face-attribute 'mode-line-modified-face nil
                      :inherit 'mode-line-face
                      :foreground "#c82829"
                      :background "#ffffff"
                      :family "Bitstream Vera Sans Mono" :height 95
                      :box '(:line-width 2 :color "#c82829"))
  (set-face-attribute 'mode-line-folder-face nil
                      :inherit 'mode-line-face
                      :family "Bitstream Vera Sans Mono" :height 95
                      :foreground "gray60")
  (set-face-attribute 'mode-line-filename-face nil
                      :inherit 'mode-line-face
                      :foreground "#eab700"
                      :family "Bitstream Vera Sans Mono" :height 95
                      :weight 'bold)
  (set-face-attribute 'mode-line-position-face nil
                      :inherit 'mode-line-face
                      :family "Bitstream Vera Sans Mono" :height 95)
  (set-face-attribute 'mode-line-mode-face nil
                      :inherit 'mode-line-face
                      :family "Bitstream Vera Sans Mono" :height 95
                      :foreground "gray80")
  (set-face-attribute 'mode-line-minor-mode-face nil
                      :inherit 'mode-line-mode-face
                      :foreground "gray40"
                      :family "Bitstream Vera Sans Mono"
                      :height 85)
  (set-face-attribute 'mode-line-process-face nil
                      :inherit 'mode-line-face
                      :family "Bitstream Vera Sans Mono" :height 95
                      :foreground "#718c00")
  (set-face-attribute 'mode-line-80col-face nil
                      :inherit 'mode-line-position-face
                      :family "Bitstream Vera Sans Mono" :height 95
                      :foreground "black" :background "#eab700"))

(modeline-setup)
;;(modeline-setup-face-light)
(modeline-setup-face-dark)
;; Display the battery level in the bottom bar
(display-battery-mode t)
