hi Normal       guibg=black       guifg=white
hi Cursor	      ctermbg=red       ctermfg=DarkGray
hi Comment	   ctermfg=DarkGray  guifg=#808080
hi Constant	   ctermfg=red  guifg=#a0a0a0
hi Special	   ctermfg=DarkRed   guifg=#4080ff
hi SpecialComment ctermfg=DarkGray
hi Identifier   ctermfg=DarkCyan  guifg=#2090ff
hi Statement    ctermfg=DarkCyan  guifg=#1888d8
hi PreProc	   ctermfg=DarkRed   guifg=#4080ff
hi Type	      ctermfg=DarkCyan	guifg=#1890b0
hi Ignore	      ctermfg=DarkGray  guifg=bg
hi Error	      ctermbg=DarkCyan  ctermfg=black     guibg=DarkCyan    guifg=Black
hi Todo	      ctermbg=black     ctermfg=DarkGray  guibg=black       guifg=#808080
hi LineNr	      ctermfg=Brown

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Debug		Special
"hi link SpecialComment Special
hi link javaCommentTitle		SpecialComment
hi link javaDocTags		   Special
hi link javaDocParam		   Function
hi link javaCommentStar		Comment
