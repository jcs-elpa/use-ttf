# use-ttf #

use-ttf is an Emacs package for you to use your own .ttf file in Emacs.
<br/><br/>


## Who may need this? (Story Behind) ## 
I use to having the issue using the same front over different OS 
because different OS have fonts installed differently. Plus I do not
want to install font manully my own, so I made this package to solve my
own issue and hopefully this package can help anyone having the same issue
here. The package will manully install font file (.ttf) file for you base 
on different OS and use it as default font in Emacs.


## Configuration ##
List of TTF fonts you want to use and install in the currnet OS.
```
;; I just have all my fonts inside my '.emacs.d' directory for sake of simplicity.
;; But you can have your font at any directory you want.
(setq use-ttf-default-ttf-fonts '(;; >> Classic Console <<
                                  "/.emacs.d/fonts/clacon.ttf"
                                  ;; >> Ubuntu Mono <<
                                  "/.emacs.d/fonts/UbuntuMono-R.ttf"))
```

Name of the font you want to use as default. I choose Ubuntu Mono as my 
default font.
```
(setq use-ttf-default-ttf-font-name "Ubuntu Mono")
```

## Usage ##
Install fonts into the current OS. The more .ttf file you try to install might
take a while, but this function does not block the Emacs' process itself.
Furthermore, you will want to call `use-ttf-set-default-font` function after
install all the fonts in the `use-ttf-default-ttf-fonts` list.
```
(call-interactively #'use-ttf-install-fonts)
```

Use the font by `use-ttf-default-ttf-font-name` variable. This will actually
set your Emacs to your target font.
```
(call-interactively #'use-ttf-set-default-font)
```

## Screen Shot ##
Windows 10 with Ubuntu Mono Regular Font <br/>
<img src="./screenshot/ubuntu-mono-on-win10.png" width="640" height="360"/>

Ubuntu 14 with Classic Console Font <br/>
<img src="./screenshot/classic-console-on-ubuntu14.png" width="640" height="360"/>

Mac OS with Ubuntu Mono Regular Font <br/>
<img src="./screenshot/ubuntu-mono-on-maxos.png" width="640" height="360"/>


## Contribution ##
If you would like to contribute to this project. You may either
clone and make pull request to this repository. Or you can
clone the project and make your own branch of this tool. Any
methods are welcome!
