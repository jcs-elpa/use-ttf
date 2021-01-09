;;
;; (@* "Prepare" )
;;

(add-to-list 'load-path "./")
(add-to-list 'load-path "./scripts/")
(require 'pkg-prepare)

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
