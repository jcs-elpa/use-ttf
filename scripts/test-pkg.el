;;
;; (@* "Prepare" )
;;

(add-to-list 'load-path "./")
(load-file (expand-file-name "./scripts/pkg-prepare.el"))

(jcs-ensure-package-installed '(s) t)

;;
;; (@* "Test" )
;;

(require 'use-ttf)

(setq use-ttf-default-ttf-fonts
      '("../fonts/clacon.ttf"
        "../fonts/UbuntuMono-R.ttf")
      use-ttf-default-ttf-font-name "Ubuntu Mono")

(use-ttf-set-default-font)
