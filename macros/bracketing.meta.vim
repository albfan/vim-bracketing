"	Stephen Riehm's braketing macros for vim
"
"	Last Change: 16.01.2000
"	(C)opyright: Stephen Riehm 1991
"

source <[source_dir]>/config/vim/bracketing.base
let bracketing_macros_loaded = 1

" Jump point macros
" =================
"
"	set a marker (the cursor is left between the marker characters)
"	default: <M-Del>
imap <M-F12>    ·mark·<ESC>i
vmap <M-F12>    ·mark·
imap <M-DEL>    ·mark·<ESC>i
vmap <M-DEL>    ·mark·
map  <M-C-M-H>  ·mark·
imap <M-C-M-H>  ·mark·
"	jump to next marker
"	default: <Del>
map  <F12>      ·jump·
imap <F12>      ·jump·
map  <DEL>      ·jump·
imap <DEL>      ·jump·
map  <C-M-H>    ·jump·
imap <C-M-H>    ·jump·

"
"	Quoting/bracketting macros
"	Note: The z cut-buffer is used to temporarily store data!
"
"	double quotes
"	default: <M-">
imap <M-"> ·"·
vmap <M-"> ·"·
"	single quotes
"	default: <M-'>
imap <M-'> ·'·
vmap <M-'> ·'·
"	stars
"	default: <M-*>
imap <M-*> ·*·
vmap <M-*> ·*·
"	braces
"	default: <M-(>
imap <M-(> ·(·
vmap <M-(> ·(·
"	braces - with padding
"	default: <M-)>
imap <M-)> ·)·
vmap <M-)> ·)·
"	underlines
"	default: <M-_>
imap <M-_> ·_·
vmap <M-_> ·_·
"	angle-brackets
"	default: <M-<>
imap <M-<> ·<·
vmap <M-<> ·<·
"	angle-brackets with padding
"	default: <M->>
imap <M->> ·>·
vmap <M->> ·>·
"	square brackets
"	default: <M-[>
imap <M-[> ·[·
vmap <M-[> ·[·
"	square brackets with padding
"	default: <M-]>
imap <M-]> ·]·
vmap <M-]> ·]·
"	back-quotes
"	default: <M-`>
" not possible on my Mac keyboard :-( (same character as `)
" imap XXX ·`·
" vmap XXX ·`·
"	curlie brackets
"	default: <M-{>
imap <M-{> ·{·
vmap <M-{> ·{·
"	new block bound by curlie brackets
"	default: <M-}>
imap <M-}> ·}·
vmap <M-}> ·}·
"	spaces :-)
"	default: <M-Space>
"	(you may have trouble getting this to work - few systems accept it!)
imap <M-Space> ·space·
vmap <M-Space> ·space·
imap <M--> ·space·
vmap <M--> ·space·
"	Nroff bold
"	default: <M-f><M-b>
" do you need this on a mac? :-)
" imap XXX ·nroffb·
" vmap XXX ·nroffb·
"	Nroff italic
"	default: <M-f><M-i>
" imap XXX ·nroffi·
" vmap XXX ·nroffi·

"
" Extended / Combined macros
"	mostly of use to programmers only
"
"	typical function call
"	default: <M-:>
imap <M-;> ·();·
vmap <M-;> ·();·
"	default: <M-;>
imap <M-:> ·(+);·
vmap <M-:> ·(+);·
"	function definition
"	default: <M-\>
imap <M-\> ·func·
vmap <M-\> ·func·

"
" Special additions:
"
"	comment marked lines
"	default: <M-#>
imap <M-#> ·#comment·
vmap <M-#> ·#comment·
map  <M-#> ·#comment·
"       insert a block-header comment line
imap <M-_><M-#> ·#-comment·
"	default: <M-/><M-/>
imap <M-/><M-/> ·/comment·
vmap <M-/><M-/> ·/comment·
map  <M-/><M-/> ·/comment·
"	uncomment marked lines (strip first few chars)
"	doesn't work for /* comments */
"	default: <M-3>
imap <M-3> ·stripcomment·
vmap <M-3> ·stripcomment·
map  <M-3> ·stripcomment·

"
" HTML Macros
" ===========
"
"	turn the current word into a HTML tag pair, ie b<M-h> -> <b></b>
"	default: <M-h>
imap <M-h> ·Htag·
vmap <M-h> ·Htag·
"
"	set up a HREF
"	default: <M-r>
imap <M-r> ·Href·
vmap <M-r> ·Href·
"
"	set up a HREF name (tag)
"	default: <M-n>
" you have to type <M-n><Space> to get this to work on a mac (dead key :-( )
imap <M-n> ·Hname·
vmap <M-n> ·Hname·

