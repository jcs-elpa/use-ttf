;;
;; (@* "Prepare" )
;;

(load-file (expand-file-name "./scripts/pkg-prepare.el"))

(jcs-ensure-package-installed '(s) t)

(load-file (expand-file-name "./use-ttf.el"))

;;
;; (@* "Test" )
;;

(setq use-ttf-default-ttf-fonts
      '("../fonts/clacon.ttf"
        "../fonts/UbuntuMono-R.ttf")
      use-ttf-default-ttf-font-name "Ubuntu Mono")

(use-ttf-set-default-font)
