(require 'load-relative)
(require 'pkg-info)
(require-relative "../habitica")

(describe "Return current emacs-habitica version"
          (it "can return the correct version"
              (expect (emacs-habitica-version)
                      :to-equal
                      "0.1.0")))
