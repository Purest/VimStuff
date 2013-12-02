filetype off
" infect me
execute pathogen#infect()

" set up auto indentation
filetype plugin indent on
set cinoptions+=g0,(0

" allow backspacing over text that was entered under a different
" edit mode session
set backspace=indent,eol,start

" beeping is annoying to me - turn it off
set noerrorbells

" turn on the nice little numbers down there
set ruler
set rulerformat=%25([%{&fileformat}]%14(%l,%c%V%)%=%4P%)

" enable switching to other buffers without having to save first
" and keep an undo history for multiple files.
set hidden

" create whitelist highlighting "list" mode use `:set list` to enable
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" show me info about commands in the status line
set showcmd
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" show status bar even if only one buffer open
set laststatus=2

" tell me which mode I'm in
set showmode

" expand tabs out to spaces
set expandtab

" set tabs and shifts to 3 spaces
set shiftwidth=4
set sts=4 softtabstop=4

" not 100% what this does :)
set background=dark

" turn on line numbers
set nu

" highlight search matches
set hls

" set up tags
set tags=./.tags;$HOME

map \b :buffers<CR>

" set up cscope command mappings
map <F2> :cope<CR>
map <F3> :cp<CR>
map <F4> :cn<CR>

" quick mapping to execute the macro stored in register 1
map <F7> @1

" helpers
set grepprg=agg
let g:agprg="$HOME/bin/agg --column"
" search for the word under the cursor
map <F5> :grep --column <C-R><C-W><CR>

" force text auto-wrapping
" set textwidth=80

" Hack for NERDTree if on non-utf8 terms.
let g:NERDTreeDirArrows=0

map <silent><F8> :PREVCOLOR<cr>
map <silent><F9> :NEXTCOLOR<cr>

imap jj  <Esc>

" setup an alias for grepping w/ less typing
command -nargs=? G :grep <f-args>

set wildmode=list:longest,full
set wildmenu

" turn off the annoying parentheses matching
let loaded_matchparen = 1

" syntax hilighting is a GOOD thing
syntax on

" slow editing on longlines is a BAD thing
set synmaxcol=356

autocmd BufRead,BufNewFile *.mak,Makefile set noet sw=8 sts=8
ca a A
" syntax hilighting for actionscript files
:au!    BufRead,BufNewFile *.as set filetype=actionscript

" syntax hilighting for lxkbb files
:au!    BufRead,BufNewFile *.conf,*.bb,*.bbclass,*.inc,*.target  set filetype=lxkbb

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 expandtab

" COLORS, beautiful colors!
"colorscheme chlordane
"colorscheme coffee
"colorscheme darkdevel
colorscheme seths
":hi Normal       guibg=black       guifg=white
"  hi Cursor	      ctermbg=red       ctermfg=DarkGray
"  hi Comment	   ctermfg=DarkGray  guifg=#808080
"  hi Constant	   ctermfg=red  guifg=#a0a0a0
"  hi Special	   ctermfg=DarkRed   guifg=#4080ff
"  hi SpecialComment ctermfg=DarkGray
"  hi Identifier   ctermfg=DarkCyan  guifg=#2090ff
"  hi Statement    ctermfg=DarkCyan  guifg=#1888d8
"  hi PreProc	   ctermfg=DarkRed   guifg=#4080ff
"  hi Type	      ctermfg=DarkCyan	guifg=#1890b0
"  hi Ignore	      ctermfg=DarkGray  guifg=bg
"  hi Error	      ctermbg=DarkCyan  ctermfg=black     guibg=DarkCyan    guifg=Black
"  hi Todo	      ctermbg=black     ctermfg=DarkGray  guibg=black       guifg=#808080
"  hi LineNr	      ctermfg=Brown
"
"  " Common groups that link to default highlighting.
"  " You can specify other highlighting easily.
"  hi link String	Constant
"  hi link Character	Constant
"  hi link Number	Constant
"  hi link Boolean	Constant
"  hi link Float		Number
"  hi link Function	Identifier
"  hi link Conditional	Statement
"  hi link Repeat	Statement
"  hi link Label		Statement
"  hi link Operator	Statement
"  hi link Keyword	Statement
"  hi link Exception	Statement
"  hi link Include	PreProc
"  hi link Define	PreProc
"  hi link Macro		PreProc
"  hi link PreCondit	PreProc
"  hi link StorageClass	Type
"  hi link Structure	Type
"  hi link Typedef	Type
"  hi link Tag		Special
"  hi link SpecialChar	Special
"  hi link Delimiter	Special
"  hi link Debug		Special
"  "hi link SpecialComment Special
"  hi link javaCommentTitle		SpecialComment
"  hi link javaDocTags		   Special
"  hi link javaDocParam		   Function
"  hi link javaCommentStar		Comment


" syntax coloring for javadoc comments (HTML)
syn region  javaDocComment    start="/\*\*"  end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaTodo,@Spell
syn region  javaCommentTitle  contained matchgroup=javaDocComment start="/\*\*"   matchgroup=javaCommentTitle keepend end="\.$" end="\.[ \t\r<&]"me=e-1 end="@"me=s-1,he=s-1 end="\*/"me=s-1,he=s-1 contains=@javaHtml,javaCommentStar,javaTodo,@Spell

syn region javaDocTags  contained start="{@link" end="}"
syn match  javaDocTags  contained "@\(see\|param\|exception\|throws\)\s\+\S\+" contains=javaDocParam
syn match  javaDocParam contained "\s\S\+"
syn match  javaDocTags  contained "@\(version\|author\|return\|deprecated\|since\)\>"
syntax case match

:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/

" setup a handy command for running git grep on the current working directory
"fun GitGrep(...) 
    "let save = &grepprg 
    "set grepprg=git\ grep\ -n\ $* 
    "let s = 'grep' 
    "for i in a:000 
        "let s = s . ' ' . i 
    "endfor 
    "exe s 
    "let &grepprg = save 
"endfun 

"command -nargs=? G call GitGrep(<f-args>)

