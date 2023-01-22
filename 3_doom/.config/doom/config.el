;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Michael Suzzi"
      user-mail-address "msuz.code@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
(setq doom-font (
        font-spec :family "Fantasque Sans Mono" :size 15 :weight 'normal)
        ;;font-spec :family "Iosevka" :size 14 :weight 'normal)
      doom-variable-pitch-font (
        font-spec :family "Crimson Pro" :size 14 :weight 'normal)
        ;;font-spec :family "Source Serif Pro" :size 14 :weight 'normal)
)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)
(setq doom-gruvbox-dark-variant "hard")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Enable logging of done tasks & log stuff into the LOGBOOK drawer by default.
(after! org
  (setq org-log-done t)
  (setq org-log-into-drawer t))

;; Enable variable and visual line mode in Org mode by default.
(add-hook! org-mode :append
           #'visual-line-mode
           #'variable-pitch-mode)

;; Use org-appear to reveal emphasis markers when moving the cursor over them.
(add-hook! org-mode :append #'org-appear-mode)

;; Create keymap for counsel-org-link
(map! :after counsel :map org-mode-map
      "C-c l l h" #'counsel-org-link)

;; configure counsel-outline-display-style so that only the headline title is
;; inserted into the link, instead of its full path within the document.
(after! counsel
  (setq counsel-outline-display-style 'title))

;; Enable Speed Keys, which allows quick single-key commands when the cursor is
;; placed on a heading. Usually the cursor needs to be at the beginning of a
;; headline line, but defining it with this function makes them active on any of
;; the asterisks at the beginning of the line.
(after! org
  (setq org-use-speed-commands
        (lambda ()
          (and (looking-at org-outline-regexp)
               (looking-back "^\**")))))

;; Use the special C-a, C-e and C-k definitions for Org, which enable some
;; special behavior in headings.
(after! org
  (setq org-special-ctrl-a/e t)
  (setq org-special-ctrl-k t))

;; Allow mixed fonts in a single buffer, particularly for org mode.
(add-hook! 'org-mode-hook #'mixed-pitch-mode)
(add-hook! 'org-mode-hook #'solaire-mode)
(setq mixed-pitch-variable-pitch-cursor nil)

;; Show wordcount in modeline for supported modes (markdown, org)
(setq doom-modeline-enable-word-count t)

;; When at beginning of line, make Ctrl-K remove whole line instead of just
;; emptying it.
(setq kill-whole-line t)

;; when you hit Ctrl-;, all occurrences of the symbol under the cursor (or the
;; current selection) are highlighted, and any changes you make on one of them
;; will be automatically applied to all others.
(use-package! iedit
  :defer
  :config
  (set-face-background 'iedit-occurrence "Magenta")
  :bind
  ("C-;" . iedit-mode))

;; Re-enable auto-saves and backups
(setq auto-save-default t
      make-backup-files t)

(after! ccls
  (setq ccls-executable "ccls")
  (setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t)))
  (set-lsp-priority! 'ccls 0))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

