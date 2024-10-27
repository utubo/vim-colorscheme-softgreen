highlight clear
if exists('syntax_on')
syntax reset
endif
let s:a=expand('<sfile>:t:r')
let g:colors_name=s:a
if has('gui_running') || &termguicolors
let s:b='gui'
let s:c='#2d3037'
let s:d='#484f51'
let s:e='#7f8e86'
let s:f='#cbd9c9'
let s:g='#e4e6d9'
let s:h='#005f87'
let s:i='#119eb7'
let s:j='#93c4d7'
let s:ba='#87d7d7'
let s:bb='#0087af'
let s:bc='#5f8787'
let s:bd='#87af87'
let s:be='#afd7af'
let s:bf='#87d787'
let s:bh='#008787'
let s:bi='#878700'
let s:bj='#aba744'
let s:ca='#e5cf88'
let s:cb='#ffff87'
let s:cc='#f09933'
let s:cd='#573844'
let s:ce='#ab485f'
let s:cf='#d5808c'
let s:cg='#ff597a'
let s:ch='#ff597a'
let s:ci='#008787'
let s:cj='#00d7af'
let s:da='#625587'
let s:db='#866fbc'
else
set t_Co=256
let s:b='cterm'
let s:c='236'
let s:d='239'
let s:e='102'
let s:f='252'
let s:g='254'
let s:h='24'
let s:i='38'
let s:j='110'
let s:ba='116'
let s:bb='31'
let s:bc='66'
let s:bd='108'
let s:be='151'
let s:bf='114'
let s:bh='30'
let s:bi='100'
let s:bj='143'
let s:ca='185'
let s:cb='228'
let s:cc='142'
let s:cd='52'
let s:ce='131'
let s:cf='174'
let s:cg='204'
let s:ch='204'
let s:ci='30'
let s:cj='43'
let s:da='60'
let s:db='97'
endif
if &bg=='light'
let [s:c,s:d,s:f,s:g]=[s:g,s:f,s:d,s:c]
let [s:h,s:j,s:ba]=[s:j,s:h,s:bb]
let [s:bc,s:be,s:bf]=[s:be,s:bc,s:bh]
let [s:bi,s:ca,s:cb]=[s:ca,s:bi,s:cc]
let [s:cd,s:cf,s:cg]=[s:cf,s:cd,s:ch]
endif
let s:dc=s:b.'fg='
let s:dd=s:b.'bg='
let s:de=s:b==# 'gui' ? 'guisp=' : 'ctermul='
let s:df=has('gui_running') ? 'gui=' : 'cterm='
let s:dg=s:df.'NONE'
let s:dh=s:df.'bold'
let s:di=s:df.'italic'
let s:dj=s:df.'reverse'
let s:ea=s:df.'underline'
let s:eb=s:df.'undercurl'
exe 'hi Normal' s:dc s:f s:dd s:c
exe 'hi Cursor' s:dc s:c s:dd s:ba
exe 'hi CursorIM' s:dc s:c s:dd s:cb
exe 'hi CursorLine' s:dd 'NONE' s:ea
exe 'hi LineNr' s:dc s:e s:dd s:d
exe 'hi CursorLineNR' s:dc s:ba s:dd s:bc s:dg
exe 'hi CursorColumn' s:dd s:h
exe 'hi SignColumn' s:dc s:bf s:dd s:d
exe 'hi FoldColumn' s:dc s:e s:dd s:d
exe 'hi Folded' s:dc s:e s:dd s:c
exe 'hi VertSplit' s:dc s:d s:dd s:d
exe 'hi ColorColumn' s:dc s:e s:dd s:d
exe 'hi TabLine' s:dc s:e s:dd s:g s:dg
exe 'hi TabLineFill' s:dc s:g s:dd s:g s:dg
exe 'hi TabLineSel' s:dc s:j s:dd s:c s:dh
exe 'hi Directory' s:dc s:bf
exe 'hi Search' s:dc s:c s:dd s:bc s:dg
exe 'hi CurSearch' s:dc s:c s:dd s:bf s:dh
hi! link IncSearch CurSearch
exe 'hi StatusLine' s:dc s:d s:dd s:f s:dj
exe 'hi StatusLineNC' s:dc s:d s:dd s:e s:dj
exe 'hi StatusLineTerm' s:dc s:g s:dd s:db
exe 'hi StatusLineTermNC' s:dc s:f s:dd s:da
exe 'hi Question' s:dc s:cb s:dd s:c s:dg
exe 'hi Title' s:dc s:j s:dd s:c s:dh
exe 'hi ModeMsg' s:dc s:f s:dd s:c s:dg
exe 'hi MoreMsg' s:dc s:e s:dd s:c s:dg
hi! link WildMenu Cursor
exe 'hi MatchParen' s:dc s:ba s:dd s:c s:dh
exe 'hi Visual' s:dc s:g s:dd s:i s:dg
exe 'hi VisualNOS' s:dc s:f s:dd s:i s:dg
exe 'hi NonText' s:dc s:d s:dg
exe 'hi Todo' s:dc s:ba s:dd 'NONE' s:dh
exe 'hi Underlined' s:dc s:ba
exe 'hi Error' s:dc s:cg s:dd 'NONE' s:dh
exe 'hi ErrorMsg' s:dc s:cg s:dd 'NONE' s:dg
exe 'hi WarningMsg' s:dc s:cb
hi! link Ignore NonText
hi! link SpecialKey NonText
exe 'hi Function' s:dc s:j
exe 'hi Identifier ' s:dc s:i s:dg
exe 'hi Constant' s:dc s:i
exe 'hi String' s:dc s:j s:dd s:d
exe 'hi Character' s:dc s:i
exe 'hi Number' s:dc s:i
hi! link Boolean Number
hi! link Float Number
exe 'hi Statement' s:dc s:j s:dh
exe 'hi Conditional' s:dc s:j
exe 'hi Repeat' s:dc s:j
exe 'hi Label' s:dc s:j s:dh
exe 'hi Keyword' s:dc s:i
exe 'hi Exception' s:dc s:ca
exe 'hi Comment' s:dc s:bd
exe 'hi SpecialComment' s:dc s:bd s:di
exe 'hi SpecialChar' s:dc s:j
exe 'hi Tag' s:dc s:be
exe 'hi Type' s:dc s:bf
exe 'hi Delimiter' s:dc s:cb
exe 'hi Debug' s:dc s:e
hi! link Operator Normal
hi! link Special Statement
exe 'hi PreProc' s:dc s:j
exe 'hi DiffAdd' s:dc s:j s:dd s:h
exe 'hi DiffDelete' s:dc s:ce s:dd s:cd
exe 'hi DiffChange' s:dc s:ca s:dd s:bi
exe 'hi DiffText' s:dc s:g s:dd s:bj s:dg
exe 'hi Pmenu' s:dc s:j s:dd s:d
hi! link PmenuSel Cursor
exe 'hi PmenuExtra' s:dc s:e s:dd s:d
exe 'hi PmenuSbar' s:dd s:d
exe 'hi PmenuThumb' s:dd s:e
exe 'hi SpellBad' s:dc s:cf s:dd s:cd s:de s:cg s:eb
exe 'hi SpellCap' s:dc s:ca s:dd s:c s:de s:cb s:eb
exe 'hi SpellLocal' s:dc s:be s:dd s:c s:de s:bf s:eb
exe 'hi SpellRare' s:dc s:j s:dd s:c s:de s:ba s:eb
hi! link Terminal Normal
if s:b==# 'gui'
let g:terminal_ansi_colors=[ s:d,s:ce,s:bd,s:bj,s:i,s:da,s:ci,s:f,s:e,s:cg,s:bf,s:cb,s:ba,s:db,s:cj,s:g ]
endif
exe 'hi JavaScriptEmbed' s:dc s:bf s:dd s:d
exe 'hi vimEscape' s:dc s:e s:dd s:d
exe 'hi EasyMotionShadeDefault' s:dc s:e s:dd s:c
exe 'hi EasyMotionTarget' s:dc s:c s:dd s:ba
hi! link EasyMotionTarget2First EasyMotionTarget
exe 'hi EasyMotionTarget2Second' s:dc s:d s:dd s:i
exe 'hi ALEErrorSign' s:dc s:cg s:dd s:d
exe 'hi ALEWarningSign' s:dc s:cb s:dd s:d
let g:rainbow_conf=get(g:,'rainbow_conf',{})
let g:rainbow_conf[s:b.'fgs']=[s:ba,s:bf,s:cb,s:cg]
if s:b==# 'gui'
let g:rcsv_colorpairs=[['7',s:ba],['7',s:bf],['7',s:cb],['7',s:cg],['7',s:db]]
else
let g:rcsv_colorpairs=[[s:ba,'Gray'],[s:bf,'Gray'],[s:cb,'Gray'],[s:cg,'Gray'],[s:db,'Gray']]
endif
call extend(g:rcsv_colorpairs,g:rcsv_colorpairs)
exe 'hi GitGutterAdd' s:dc s:h s:dd s:j
exe 'hi GitGutterChange' s:dc s:bi s:dd s:bj
exe 'hi GitGutterDelete' s:dc s:cd s:dd s:ce
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
