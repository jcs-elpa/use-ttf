;;; activate.el --- Test activate package  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'use-ttf)

(setq use-ttf-default-ttf-fonts
      '("../fonts/clacon.ttf"
        "../fonts/UbuntuMono-R.ttf")
      use-ttf-default-ttf-font-name "Ubuntu Mono")

(use-ttf-set-default-font)

;;; activate.el ends here
