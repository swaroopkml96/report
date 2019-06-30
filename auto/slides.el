(TeX-add-style-hook
 "slides"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "8pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "style=ieee")))
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "amsmath"
    "amssymb"
    "biblatex"
    "graphicx"
    "booktabs"
    "multirow"
    "lscape"
    "longtable"
    "hyperref")
   (LaTeX-add-labels
    "basic_examples"
    "avg_saliency_maps"
    "tab:test-combos"
    "tab:nih_split"
    "tab:guangzhou_split"
    "architecture"
    "cam_bbox_examples"
    "tab:baseline_nih"
    "tab:baseline_shenzhen"
    "tab:nih_previous"
    "tab:nih_comparision"
    "tab:shenzhen_previous"
    "tab:montgomery_previous"
    "examples_1"
    "examples_2"
    "examples_3"
    "examples_4"
    "examples_5"
    "examples_6"
    "examples_7"
    "examples_8"
    "examples_9"
    "examples_10"
    "examples_11"
    "examples_12"
    "examples_13"
    "examples_14"
    "examples_15"
    "examples_16"
    "examples_17"
    "screenshot")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

