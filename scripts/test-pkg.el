
(message "------> %s" (expand-file-name "../"))

(load-file (expand-file-name "./use-ttf.el"))

(setq use-ttf-default-ttf-fonts
      '("../fonts/clacon.ttf"
        "../fonts/UbuntuMono-R.ttf"))
(setq use-ttf-default-ttf-font-name "Ubuntu Mono")

(use-ttf-set-default-font)
