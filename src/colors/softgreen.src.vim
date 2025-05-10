" * softgreen *
" Author: utubo
" Notes:
" Thx: This is based on https://github.com/ggalindezb/vim_colorscheme_template

highlight clear
if exists('syntax_on')
  syntax reset
endif
let s:colors_name = expand('<sfile>:t:r')
let g:colors_name = s:colors_name

" COLORS
"   <type><opacity>
" type:
"   n: normal
"   b: positiv1(blue)
"   g: positiv2(green)
"   y: warn(yellow)
"   r: error(red)
"   c: cyan(for terminal)
"   m: magenta(for terminal)
" opacity:
"   0: 0% Default BG (only n0)
"   1: 20% BG
"   2: 60% Middle FG
"   3: 80% Default FG
"   4: 100% Highlight (eg. b4=cursor,g4=search)
"   9: 100% Highlight on &background == 'light'
if has('gui_running') || &termguicolors
  let s:term = 'gui'
  let s:n0 = '#2d3037'
  let s:n1 = '#484f51'
  let s:n2 = '#7f8e86'
  let s:n3 = '#cbd9c9'
  let s:n4 = '#e4e6d9'
  let s:b1 = '#005f87'
  let s:b2 = '#119eb7'
  let s:b3 = '#93c4d7'
  let s:b4 = '#87d7d7'
  let s:b9 = '#0087af'
  let s:g1 = '#5f8787'
  let s:g2 = '#87af87'
  let s:g3 = '#afd7af'
  let s:g4 = '#87d787'
  let s:g9 = '#008787'
  let s:y1 = '#878700'
  let s:y2 = '#aba744' " not used
  let s:y3 = '#e5cf88'
  let s:y4 = '#ffff87'
  let s:y9 = '#f09933'
  let s:r1 = '#573844'
  let s:r2 = '#ab485f'
  let s:r3 = '#d5808c'
  let s:r4 = '#ff597a'
  let s:r9 = '#ff597a'
  let s:c2 = '#008787'
  let s:c4 = '#00d7af'
  let s:m2 = '#625587'
  let s:m4 = '#866fbc'
else
  set t_Co=256
  let s:term = 'cterm'
  let s:n0 = '236'
  let s:n1 = '239'
  let s:n2 = '102'
  let s:n3 = '252'
  let s:n4 = '254'
  let s:b1 = '24'
  let s:b2 = '38'
  let s:b3 = '110'
  let s:b4 = '116'
  let s:b9 = '31'
  let s:g1 = '66'
  let s:g2 = '108'
  let s:g3 = '151'
  let s:g4 = '114'
  let s:g9 = '30'
  let s:y1 = '100'
  let s:y2 = '143' " not used
  let s:y3 = '185'
  let s:y4 = '228'
  let s:y9 = '142'
  let s:r1 = '52'
  let s:r2 = '131' " not used
  let s:r3 = '174'
  let s:r4 = '204'
  let s:r9 = '204'
  let s:c2 = '30'
  let s:c4 = '43'
  let s:m2 = '60'
  let s:m4 = '97'
endif

if &background == 'light'
  let [s:n0, s:n1, s:n3, s:n4] = [s:n4, s:n3, s:n1, s:n0]
  let [s:b1, s:b3, s:b4] = [s:b3, s:b1, s:b9]
  let [s:g1, s:g3, s:g4] = [s:g3, s:g1, s:g9]
  let [s:y1, s:y3, s:y4] = [s:y3, s:y1, s:y9]
  let [s:r1, s:r3, s:r4] = [s:r3, s:r1, s:r9]
endif

let s:fg     = s:term.'fg='
let s:bg     = s:term.'bg='
let s:sp     = s:term ==# 'gui' ? 'guisp=' : 'ctermul='
let s:style  = has('gui_running') ? 'gui=' : 'cterm='
let s:none   = s:style.'NONE'
let s:bold   = s:style.'bold'
let s:italic = s:style.'italic'
let s:reverse = s:style.'reverse'
let s:underline = s:style.'underline'
let s:undercurl = s:style.'undercurl'

" --------
" - Base -
" --------
exe 'hi Normal'        s:fg s:n3 s:bg s:n0
exe 'hi Cursor'        s:fg s:n0 s:bg s:b4 s:none
exe 'hi CursorIM'      s:fg s:n0 s:bg s:y4 s:none
exe 'hi CursorLine'    s:bg 'NONE' s:underline
exe 'hi LineNr'        s:fg s:n2 s:bg s:n1
exe 'hi CursorLineNR'  s:fg s:b4 s:bg s:g1 s:none
hi! link lCursor CursorIM

" -----------------
" - Number column -
" -----------------
exe 'hi CursorColumn'  s:bg s:b1
exe 'hi SignColumn'    s:fg s:g4 s:bg s:n1
exe 'hi FoldColumn'    s:fg s:n2 s:bg s:n1
exe 'hi Folded'        s:fg s:n2 s:bg s:n0

" -------------------------
" - Window/Tab delimiters -
" -------------------------
exe 'hi VertSplit'     s:fg s:n1 s:bg s:n1
exe 'hi ColorColumn'   s:fg s:n2 s:bg s:n1
exe 'hi TabLine'       s:fg s:n2 s:bg s:n1 s:none
exe 'hi TabLineFill'   s:fg s:n2 s:bg s:n1 s:none
exe 'hi TabLineSel'    s:fg s:b3 s:bg s:n0 s:bold

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
exe 'hi Directory'     s:fg s:g4
exe 'hi Search'        s:fg s:n0 s:bg s:g1 s:none
exe 'hi CurSearch'     s:fg s:n0 s:bg s:g4 s:bold
hi! link IncSearch CurSearch

" -----------------
" - Prompt/Status -
" -----------------
exe 'hi StatusLine'    s:fg s:n1 s:bg s:n3 s:reverse
exe 'hi StatusLineNC'  s:fg s:n1 s:bg s:n2 s:reverse
exe 'hi StatusLineTerm'    s:fg s:n4 s:bg s:m4
exe 'hi StatusLineTermNC'  s:fg s:n3 s:bg s:m2
exe 'hi Question'      s:fg s:y4 s:bg 'NONE' s:none
exe 'hi Title'         s:fg s:b3 s:bg 'NONE' s:bold
exe 'hi ModeMsg'       s:fg s:n3 s:bg 'NONE' s:none
exe 'hi MoreMsg'       s:fg s:n2 s:bg 'NONE' s:none
hi! link WildMenu Cursor

" --------------
" - Visual aid -
" --------------
exe 'hi MatchParen'    s:fg s:b4 s:bg 'NONE' s:bold
exe 'hi Visual'        s:fg s:n4 s:bg s:b2 s:none
exe 'hi VisualNOS'     s:fg s:n3 s:bg s:b2 s:none
exe 'hi NonText'       s:fg s:n1 s:none

exe 'hi Todo'          s:fg s:b4 s:bg 'NONE' s:bold
exe 'hi Underlined'    s:fg s:b4
exe 'hi Error'         s:fg s:r4 s:bg 'NONE' s:bold
exe 'hi ErrorMsg'      s:fg s:r4 s:bg 'NONE' s:none
exe 'hi WarningMsg'    s:fg s:y4
hi! link Ignore NonText
hi! link SpecialKey NonText

" ------------------
" - Variable types -
" ------------------
exe 'hi Function'      s:fg s:b3
exe 'hi Identifier '   s:fg s:b2 s:none
exe 'hi Constant'      s:fg s:b2
exe 'hi String'        s:fg s:b3 s:bg s:n1
exe 'hi Character'     s:fg s:b2
exe 'hi Number'        s:fg s:b2 s:bg 'NONE'
hi! link Boolean Number
hi! link Float Number

" -----------------------
" - Language constructs -
" -----------------------
exe 'hi Statement'     s:fg s:b3 s:bold
exe 'hi Conditional'   s:fg s:b3
exe 'hi Repeat'        s:fg s:b3
exe 'hi Label'         s:fg s:b3 s:bold
exe 'hi Keyword'       s:fg s:b2
exe 'hi Exception'     s:fg s:y3
exe 'hi Comment'       s:fg s:g2
exe 'hi SpecialComment' s:fg s:g2 s:italic
exe 'hi SpecialChar'   s:fg s:b3
exe 'hi Tag'           s:fg s:g3
exe 'hi Type'          s:fg s:g4
exe 'hi Delimiter'     s:fg s:y4
exe 'hi Debug'         s:fg s:n2
hi! link Operator Normal
hi! link Special Statement

" ----------
" - C like -
" ----------
exe 'hi PreProc' s:fg s:b3


" --------
" - Diff -
" --------
exe 'hi DiffAdd'       s:fg s:b3 s:bg s:b1
exe 'hi DiffDelete'    s:fg s:r2 s:bg s:r1
exe 'hi DiffChange'    s:fg s:y3 s:bg s:y1
exe 'hi DiffText'      s:fg s:n4 s:bg s:y2 s:none

" -------------------
" - Completion menu -
" -------------------
exe 'hi Pmenu'         s:fg s:n3 s:bg s:b1
exe 'hi PmenuSel'      s:fg s:n0 s:bg s:b4
exe 'hi PmenuKind'     s:fg s:g3 s:bg s:b1
exe 'hi PmenuKindSel'  s:fg s:g1 s:bg s:b4
exe 'hi PmenuMatch'    s:fg s:y3 s:bg s:b1
exe 'hi PmenuMatchSel' s:fg s:y1 s:bg s:b4
exe 'hi PmenuExtra'    s:fg s:b4 s:bg s:b1
exe 'hi PmenuExtraSel' s:fg s:b2 s:bg s:b4
exe 'hi PmenuSbar'     s:bg s:n1
exe 'hi PmenuThumb'    s:bg s:n2

" ------------
" - Spelling -
" ------------
exe 'hi SpellBad'      s:fg s:r3 s:bg s:r1 s:sp s:r4 s:undercurl
exe 'hi SpellCap'      s:fg s:y3 s:bg 'NONE' s:sp s:y4 s:undercurl
exe 'hi SpellLocal'    s:fg s:g3 s:bg 'NONE' s:sp s:g4 s:undercurl
exe 'hi SpellRare'     s:fg s:b3 s:bg 'NONE' s:sp s:b4 s:undercurl

" ---------------------
" - Terminal -
" ---------------------
hi! link Terminal Normal
if s:term ==# 'gui'
  let g:terminal_ansi_colors = [
  \ s:n1, s:r2, s:g2, s:y2, s:b2, s:m2, s:c2, s:n3,
  \ s:n2, s:r4, s:g4, s:y4, s:b4, s:m4, s:c4, s:n4
  \ ]
endif

" ---------------------
" - Specific settings -
" ---------------------
exe 'hi JavaScriptEmbed' s:fg s:g4 s:bg s:n1
exe 'hi vimEscape' s:fg s:n2 s:bg s:n1

" Easy motion
exe 'hi EasyMotionShadeDefault' s:fg s:n2 s:bg s:n0
exe 'hi EasyMotionTarget' s:fg s:n0 s:bg s:b4
hi! link EasyMotionTarget2First EasyMotionTarget
exe 'hi EasyMotionTarget2Second' s:fg s:n1 s:bg s:b2

" ALE
exe 'hi ALEErrorSign' s:fg s:r4 s:bg s:n1
exe 'hi ALEWarningSign' s:fg s:y4 s:bg s:n1

" rainbow
let g:rainbow_conf = get(g:, 'rainbow_conf', {})
let g:rainbow_conf[s:term.'fgs'] = [s:b4, s:g4, s:y4, s:r4]

" rainbow-csv
if s:term ==# 'gui'
  let g:rcsv_colorpairs = [['7', s:b4], ['7', s:g4], ['7', s:y4], ['7', s:r4], ['7', s:m4]]
else
  let g:rcsv_colorpairs = [[s:b4, 'Gray'], [s:g4, 'Gray'], [s:y4, 'Gray'], [s:r4, 'Gray'], [s:m4, 'Gray']]
endif
call extend(g:rcsv_colorpairs, g:rcsv_colorpairs)

" GitGutter
exe 'hi GitGutterAdd' s:fg s:b1 s:bg s:b3
exe 'hi GitGutterChange' s:fg s:y1 s:bg s:y2
exe 'hi GitGutterDelete' s:fg s:r1 s:bg s:r2
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
