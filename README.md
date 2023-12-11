[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![MELPA](https://melpa.org/packages/use-ttf-badge.svg)](https://melpa.org/#/use-ttf)
[![MELPA Stable](https://stable.melpa.org/packages/use-ttf-badge.svg)](https://stable.melpa.org/#/use-ttf)

# use-ttf
> Keep font consistency across different OSs.

[![CI](https://github.com/jcs-elpa/use-ttf/actions/workflows/test.yml/badge.svg)](https://github.com/jcs-elpa/use-ttf/actions/workflows/test.yml)
[![Activate](https://github.com/jcs-elpa/use-ttf/actions/workflows/activate.yml/badge.svg)](https://github.com/jcs-elpa/use-ttf/actions/workflows/activate.yml)

I created this for people who have problems with their fonts not working
over different OS’s due to different installation methods used in different
OS’s. The purpose of this package is to automatically install font files (.ttf)
based on the OS you’re using. Saving you time from manually installing fonts.

| Windows 10 / Ubuntu Mono                  | Ubuntu 14 / Classic Console                      | Mac OS / Ubuntu Mono                      |
|------------------------------------------:|:------------------------------------------------:|:-----------------------------------------:|
|<img src="./etc/ubuntu-mono-on-win10.png"/>|<img src="./etc/classic-console-on-ubuntu14.png"/>|<img src="./etc/ubuntu-mono-on-maxos.png"/>|


**‼️ [ATTENTION] ‼️ -- MAKE SURE EMACS HAS THE PERMISSION TO INSTALL FONTS!**

## 📝 Configuration

List of TTF fonts you want to use and install in the currnet OS.
```el
;; I just have all my fonts inside my '.emacs.d' directory for sake of simplicity.
;; But you can have your font at any directory you want.
(setq use-ttf-default-ttf-fonts '(;; >> Classic Console <<
                                  "~/.emacs.d/fonts/clacon.ttf"
                                  ;; >> Ubuntu Mono <<
                                  "~/.emacs.d/fonts/UbuntuMono-R.ttf"))
```

Name of the font you want to use as default. I choose `Ubuntu Mono` as my
default font.
```el
(setq use-ttf-default-ttf-font-name "Ubuntu Mono")
```

## 🔧 Usage

Install fonts into the current OS. The more .ttf file you try to install might
take a while, but this function does not block the Emacs' process itself.
Furthermore, you will want to call `use-ttf-set-default-font` function after
install all the fonts in the `use-ttf-default-ttf-fonts` list.
```el
M-x use-ttf-install-fonts
```

Use the font by `use-ttf-default-ttf-font-name` variable. This will actually
set your Emacs to your target font.
```el
M-x use-ttf-set-default-font
```

## 🛠️ Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)
[![Become a patron](https://img.shields.io/badge/patreon-become%20a%20patron-orange.svg?logo=patreon)](https://www.patreon.com/jcs090218)

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!

### 🔬 Development

To run the test locally, you will need the following tools:

- [Eask](https://emacs-eask.github.io/)
- [Make](https://www.gnu.org/software/make/) (optional)

Install all dependencies and development dependencies:

```sh
$ eask install-deps --dev
```

To test the package's installation:

```sh
$ eask package
$ eask install
```

To test compilation:

```sh
$ eask compile
```

**🪧 The following steps are optional, but we recommend you follow these lint results!**

The built-in `checkdoc` linter:

```sh
$ eask lint checkdoc
```

The standard `package` linter:

```sh
$ eask lint package
```

*📝 P.S. For more information, find the Eask manual at https://emacs-eask.github.io/.*

## ⚜️ License

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

See [`LICENSE`](./LICENSE.txt) for details.
