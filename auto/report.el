(TeX-add-style-hook
 "report"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "12pt" "oneside" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "style=ieee") ("geometry" "margin=1in") ("hypcap" "all")))
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
    "booktabs"
    "multirow"
    "lscape"
    "longtable"
    "textcomp"
    "geometry"
    "float"
    "hyperref"
    "hypcap")
   (LaTeX-add-labels
    "basic_examples"
    "motivation"
    "data"
    "tab:test-combos"
    "nih_cxr"
    "tab:nih_split"
    "mendeley"
    "tab:guangzhou_split"
    "shenzhen"
    "tab:shenzhen_split"
    "montgomery"
    "tab:mc_split"
    "baselines"
    "architecture"
    "training_procedure"
    "inference_procedure"
    "cam_bbox_examples"
    "tab:baseline_nih"
    "tab:baseline_shenzhen"
    "exp"
    "data_augmentation_loss"
    "tab:da_vs_noda"
    "tab:tta"
    "tab:mixup"
    "tab:imagenet_pretraining"
    "tab:pretraining_nih"
    "tab:overdiagnosis"
    "progressive_resizing"
    "tab:progressive_resizing"
    "tab:ensembling"
    "avg_saliency_maps"
    "tab:fairness"
    "tab:generalization"
    "res"
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
    "examples_17")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

