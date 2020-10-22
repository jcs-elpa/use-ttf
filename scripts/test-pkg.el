
(message "------> %s" (expand-file-name "../"))

(add-to-list 'load-path (expand-file-name "../"))

(use-ttf-set-default-font)

(setq use-ttf-default-ttf-fonts
      '("../fonts/clacon.ttf"
        "../fonts/UbuntuMono-R.ttf"))
(setq use-ttf-default-ttf-font-name "Ubuntu Mono")
