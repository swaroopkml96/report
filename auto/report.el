(TeX-add-style-hook
 "report"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "12pt" "twoside" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "style=ieee") ("hypcap" "all")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "rep12"
    "amsmath"
    "amssymb"
    "biblatex"
    "graphicx"
    "mathptmx"
    "hyperref"
    "hypcap")
   (LaTeX-add-labels
    "basic_examples"
    "litsurvey"
    "nih_cxr"
    "mendeley"
    "szhenzhen"
    "montgomery"
    "architecture"
    "training_procedure"
    "exp"
    "res"
    "bias"
    "practical")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

