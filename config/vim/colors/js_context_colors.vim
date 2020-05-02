" Vim color file
"
" Author: David Wilhelm <dewilhelm@gmail.com>
"
" Note: Used by the JavaScript Context Colors plugin
" to highlight function scopes differently by level
" top level = 0
" To override these colors, copy this colorscheme
" to your ./vim/colors/ dir and change as desired

"echom "JSCC: loading highlighting groups"

hi JSCC_UndeclaredGlobal ctermfg=199 guifg=#5b878c

" hi JSCC_Level_2  guifg=#b58900
" hi JSCC_Level_3  guifg=#cb4b16
" hi JSCC_Level_4  guifg=#dc322f
" hi JSCC_Level_1  guifg=#d33682
" hi JSCC_Level_1  guifg=#6c71c4
" hi JSCC_Level_0  guifg=#268bd2
" hi JSCC_Level_1  guifg=#2aa198
hi JSCC_Level_0  guifg=#7f996e
hi JSCC_Level_1  guifg=#ab944d
hi JSCC_Level_2  guifg=#b85d5c

hi JSCC_Level_3  guifg=#946088
hi JSCC_Level_4  guifg=#6c71c4
hi JSCC_Level_5  guifg=#d33682
hi JSCC_Level_6  guifg=#839496
                                 

hi Comment ctermfg=243 guifg=#586e75

if !g:js_context_colors_colorize_comments
    hi link javaScriptComment              Comment
    hi link javaScriptLineComment          Comment
    hi link javaScriptDocComment           Comment
    hi link javaScriptCommentTodo          Todo
endif
