" Vim color file
" Largely inspired from the 'desert' theme

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
"let g:colors_name="desert"

" color terminal definitions
" :source scripts/color_demo.vim to see them
" 0 is black
" 1 is red
" 2 is green
" 3 is yellow (dark-ish)
" 4 is blue
" 5 is violet
" 6 is cyan(? turquoise)
" 7 is some light grey
" 8 is some darker grey (nice bg, possibly too light)
" 9 is some red/orange
" 10 is fluo green
" 11 is bright yellow
" 12 is a nice blue
" 13 is violent pink
" 14 is aquablue
" 15 is dark violet

" 16 gives black it seems
hi Normal        ctermbg=236      ctermfg=255
hi SpecialKey    ctermfg=darkgreen
hi NonText       cterm=bold       ctermfg=darkblue
hi Directory     ctermfg=darkcyan
hi ErrorMsg      cterm=bold       ctermfg=7      ctermbg=1
hi IncSearch     cterm=NONE       ctermfg=black  ctermbg=darkgreen
hi Search        cterm=NONE       ctermfg=black  ctermbg=7
hi MoreMsg       ctermfg=darkgreen
hi ModeMsg       cterm=NONE       ctermfg=45
hi LineNr        ctermfg=3
hi Question      ctermfg=green
"hi StatusLine    cterm=bold,reverse
"hi VertLine      ctermbg=0,255,0
"hi StatusLineNC  cterm=NONE       ctermfg=black  ctermbg=white
"hi VertSplit     cterm=reverse
hi Title         ctermfg=5
hi Visual        cterm=reverse
hi VisualNOS     cterm=bold,underline
hi WarningMsg    ctermfg=1
hi WildMenu      ctermfg=0        ctermbg=3
hi Folded        ctermfg=darkgrey ctermbg=NONE
hi FoldColumn    ctermfg=darkgrey ctermbg=NONE
hi DiffAdd       ctermbg=4
hi DiffChange    ctermbg=5
hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
hi DiffText      cterm=bold ctermbg=1
hi Comment       ctermfg=darkcyan
hi Constant      ctermfg=red
hi Special       ctermfg=208
hi Identifier    ctermfg=6
hi Statement     ctermfg=51
hi PreProc       ctermfg=183
hi Type          ctermfg=193
hi Underlined    cterm=underline ctermfg=5
hi Ignore        ctermfg=darkgrey
hi Error         cterm=bold ctermfg=7 ctermbg=1
hi Cursor        cterm=NONE ctermfg=236 ctermbg=255
hi iCursor        ctermfg=black ctermbg=white


