;;; llama-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from llama.el

(autoload 'llama "llama" "\
Expand to a `lambda' expression that wraps around FN and BODY.

This macro provides a compact way to write short `lambda' expressions.
It expands to a `lambda' expression, which calls the function FN with
arguments BODY and returns its value.  The arguments of the `lambda'
expression are derived from symbols found in BODY.

Each symbol from `%1' through `%9', which appears in an unquoted part
of BODY, specifies a mandatory argument.  Each symbol from `&1' through
`&9', which appears in an unquoted part of BODY, specifies an optional
argument.  The symbol `&*' specifies extra (`&rest') arguments.

The shorter symbol `%' can be used instead of `%1', but using both in
the same expression is not allowed.  Likewise `&' can be used instead
of `&1'.  These shorthands are not recognized in function position.

To support binding forms that use a vector as VARLIST (such as `-let'
from the `dash' package), argument symbols are also detected inside of
vectors.

The space between `##' and FN can be omitted because `##' is read-syntax
for the symbol whose name is the empty string.  If you prefer you can
place a space there anyway, and if you prefer to not use this somewhat
magical symbol at all, you can instead use the alternative name `llama'.

Instead of:

  (lambda (a &optional _ c &rest d)
    (foo a (bar c) d))

you can use this macro and write:

  (##foo %1 (bar &3) &*)

which expands to:

  (lambda (%1 &optional _&2 &3 &rest &*)
    (foo %1 (bar &3) &*))

Unused trailing arguments and mandatory unused arguments at the border
between mandatory and optional arguments are also supported:

  (##list %1 _%3 &5 _&6)

becomes:

  (lambda (%1 _%2 _%3 &optional _&4 &5 _&6)
    (list %1 &5))

Note how `_%3' and `_&6' are removed from the body, because their names
begin with an underscore.  Also note that `_&4' is optional, unlike the
explicitly specified `_%3'.

Consider enabling `llama-fontify-mode' to highlight `##' and its
special arguments.

(fn FN &rest BODY)" nil t)
(defvar llama-fontify-mode nil "\
Non-nil if Llama-Fontify mode is enabled.
See the `llama-fontify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `llama-fontify-mode'.")
(custom-autoload 'llama-fontify-mode "llama" nil)
(autoload 'llama-fontify-mode "llama" "\
In Emacs Lisp mode, highlight the `##' macro and its special arguments.

This is a global minor mode.  If called interactively, toggle the
`Llama-Fontify mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='llama-fontify-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "llama" '("##" "all-completions" "elisp-" "intern" "lisp--el-match-keyword@llama" "llama-"))


;;; Generated autoloads from llama-test.el

(register-definition-prefixes "llama-test" '("llama-test--flatten"))

;;; End of scraped data

(provide 'llama-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; llama-autoloads.el ends here
