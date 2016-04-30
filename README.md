# Introduction

emacs-habitica is an Emacs integration for the online productivity application [Habitica](https://habitica.com). I also hope this repository and plugin serves an example for writing an extension to Emacs.

# Current Status

This emacs package is completely unusable and in alpha status.

# Usage

## Installation

### Manual

You can add this package to your `load-path` and `require` it.

```
(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'habitica)
```

# Roadmap

- [ ] Implement REST client for Habitica API.
- [ ] Setup continuous integration.
- [ ] Upload package to `melpa`
- [ ] Create a `spacemacs` layer to match with the package.

# License

```
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
02110-1301, USA.
```
