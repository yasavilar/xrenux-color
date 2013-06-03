"
"
" "  __  __                                         _          "
" "  \ \/ / _ __  ___  _ __   _   _ __  __  __   __(_) _   _   "
" "   \/ / /  __// _ \|  _ \ | | | |\ \/ /  \ \ / /| || \ / |  "
" "   / /\ | |  |  __/| | | || |_| || () |   \ / / | || |V| |  "
" "  /_/\_\|_|   \___||_| |_| \___/ /_/\_\ () \_/  |_||_| |_|  "
" "                                                            "
"
" File:         xrenux.vim
" Maintainer:   Yasmani Avila (yasavilar@gmail.com)
" Version:      1.0
" Last Change:  April 01 2013

" Copyright (c) 2013 Yasmani Avila.
" MIT License: 
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xrenux"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#303030 ctermbg=236 cterm=none
  hi CursorColumn guibg=#303030 ctermbg=236
  hi MatchParen guifg=#FF5FD7 guibg=#3A3A3A gui=bold ctermfg=206 ctermbg=237 cterm=bold
  hi Pmenu 		guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel 	guifg=#000000 guibg=#AFD700 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#626262 gui=none ctermbg=241
hi Normal 		guifg=#B2B2B2 guibg=#1C1C1C gui=none ctermfg=249 ctermbg=234
hi NonText 		guifg=#808080 guibg=#262626 gui=none ctermfg=244 ctermbg=235
hi LineNr 		guifg=#4E4E4E guibg=#080808 gui=none ctermfg=239 ctermbg=232
hi StatusLine 	guifg=#DADADA guibg=#3A3A3A gui=italic ctermfg=253 ctermbg=238
hi StatusLineNC guifg=#949494 guibg=#3A3A3A gui=none ctermfg=246 ctermbg=238
hi VertSplit 	guifg=#3A3A3A guibg=#3A3A3A gui=none ctermfg=238 ctermbg=238
hi Folded 		guibg=#9E9E9E guifg=#080808 gui=none ctermfg=247 ctermbg=232
hi Title		guifg=#E4E4E4 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi Visual		guifg=#9E9E9E guibg=#121212 gui=none ctermfg=247  ctermbg=233
hi SpecialKey	guifg=#3A3A3A gui=none ctermfg=237 
hi ErrorMsg     guifg=#3A3A3A gui=none ctermfg=238

" Syntax highlighting
hi Comment 		guifg=#808080 gui=italic ctermfg=244 
hi Todo 		guifg=#8A8A8A gui=italic ctermfg=245
hi Boolean      guifg=#D75FD7 gui=none ctermfg=170
hi String 		   guifg=#D787FF gui=italic ctermfg=177
hi StringDelimiter guifg=#AFFF00 gui=italic ctermfg=154
hi Identifier 	guifg=#D75FD7 gui=none ctermfg=170 cterm=none
hi Function 	guifg=#D75F5F gui=none ctermfg=167
hi Type 		guifg=#AF5FD7 gui=none ctermfg=134
hi Statement 	guifg=#AF5FD7 gui=none ctermfg=134
hi Keyword		guifg=#AF8700 gui=none ctermfg=136
hi Constant 	guifg=#FFFF87 gui=none ctermfg=228
hi Number		guifg=#AF5FAF gui=none ctermfg=133
hi Special		guifg=#B2B2B2 gui=none ctermfg=249
hi PreProc 		guifg=#AF5FD7 gui=none ctermfg=134
hi Delimiter    guifg=#808080 gui=none ctermfg=244
hi Search       guifg=#FF8787 gui=none ctermfg=210
hi Directoty    guifg=#D75FD7 gui=none ctermfg=170
hi Structure    guifg=#FF5FAF gui=none ctermfg=205

" Code-specific colors
hi pythonOperator guifg=#8787D7 gui=none ctermfg=103

" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine
hi! link NonText		LineNr

" Diff highlighting
"hi DiffAdd						ctermbg=17										guibg=#2a0d6a
"hi DiffDelete	ctermfg=234		ctermbg=60		cterm=none		guifg=#242424	guibg=#3e3969	gui=none
"hi DiffText						ctermbg=53		cterm=none						guibg=#73186e	gui=none
"hi DiffChange					ctermbg=237										guibg=#382a37

" Diff
hi link diffRemoved Constant
hi link diffAdded String

" PHP
hi link phpFunctions Function
hi StorageClass guifg=#AF5FD7  gui=none ctermfg=134
hi link phpSuperglobal Identifier
hi link phpQuoteSingle StringDelimiter
hi link phpQuoteDouble StringDelimiter
hi link phpBoolean Constant
hi link phpNull Constant
hi link phpArrayPair Operator

" JavaScript
hi link javaScriptValue Constant
hi link javaScriptRegexpString rubyRegexp

" C
hi link cOperator Constant

" Objective-C/Cocoa
hi link objcClass Type
hi link cocoaClass objcClass
hi link objcSubclass objcClass
hi link objcSuperclass objcClass
hi link objcDirective rubyClass
hi link cocoaFunction Function
hi link objcMethodName Identifier
hi link objcMethodArg Normal
hi link objcMessageName Identifier

" Tag list
hi link TagListFileName Directory

