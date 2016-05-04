(require 'load-relative)
(require 'pkg-info)
(require 'load-directory)

(load-directory "../")

(describe "Return current emacs-habitica version"
          (it "can return the correct version"
              (expect (habitica-version)
                      :to-equal
                      "0.1.0")))
