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
imap <D-F12> ·mark·<ESC>i
vmap <D-F12> ·mark·
imap <D-DEL> ·mark·<ESC>i
vmap <D-DEL> ·mark·
map  <M-C-D-H> ·mark·
imap <M-C-D-H> ·mark·
"	jump to next marker
"	default: <Del>
map  <F12> ·jump·
imap <F12> ·jump·
map  <DEL> ·jump·
imap <DEL> ·jump·
map  <C-D-H> ·jump·
imap <C-D-H> ·jump·

"
"	Quoting/bracketting macros
"	Note: The z cut-buffer is used to temporarily store data!
"
"	double quotes
"	default: <M-">
imap <S-D-'> ·"·
vmap <S-D-'> ·"·
"	single quotes
"	default: <M-'>
imap <D-'> ·'·
vmap <D-'> ·'·
"	stars
"	default: <M-*>
imap <S-D-8> ·*·
vmap <S-D-8> ·*·
"	braces
"	default: <M-(>
imap <S-D-9> ·(·
vmap <S-D-9> ·(·
"	braces - with padding
"	default: <M-)>
imap <S-D-0> ·)·
vmap <S-D-0> ·)·
"	underlines
"	default: <M-_>
imap <S-D--> ·_·
vmap <S-D--> ·_·
"	angle-brackets
"	default: <M-<>
imap <S-D-,> ·<·
vmap <S-D-,> ·<·
"	angle-brackets with padding
"	default: <M->>
imap <S-D-.> ·>·
vmap <S-D-.> ·>·
"	square brackets
"	default: <M-[>
imap <D-[> ·[·
vmap <D-[> ·[·
"	square brackets with padding
"	default: <M-]>
imap <D-]> ·]·
vmap <D-]> ·]·
"	back-quotes
"	default: <M-`>
" not possible on my Mac keyboard :-( (same character as `)
" imap XXX ·`·
" vmap XXX ·`·
"	curlie brackets
"	default: <M-{>
imap <S-D-[> ·{·
vmap <S-D-[> ·{·
"	new block bound by curlie brackets
"	default: <M-}>
imap <S-D-]> ·}·
vmap <S-D-]> ·}·
"	spaces :-)
"	default: <M-Space>
"	(you may have trouble getting this to work - few systems accept it!)
imap <D--> ·space·
vmap <D--> ·space·
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
imap <D-;> ·();·
vmap <D-;> ·();·
"	default: <M-;>
imap <S-D-;> ·(+);·
vmap <S-D-;> ·(+);·
"	function definition
"	default: <M-\>
imap <D-\> ·func·
vmap <D-\> ·func·

"
" Special additions:
"
"	comment marked lines
"	default: <M-#>
imap <S-D-3> ·#comment·
vmap <S-D-3> ·#comment·
map  <S-D-3> ·#comment·
"	default: <M-/><M-/>
imap <D-/><D-/> ·/comment·
vmap <D-/><D-/> ·/comment·
map  <D-/><D-/> ·/comment·
"	uncomment marked lines (strip first few chars)
"	doesn't work for /* comments */
"	default: <M-3>
imap <D-3> ·stripcomment·
vmap <D-3> ·stripcomment·
map  <D-3> ·stripcomment·

"
" HTML Macros
" ===========
"
"	turn the current word into a HTML tag pair, ie b<M-h> -> <b></b>
"	default: <M-h>
imap <S-D-h> ·Htag·
vmap <S-D-h> ·Htag·
"
"	set up a HREF
"	default: <M-r>
imap <D-r> ·Href·
vmap <D-r> ·Href·
"
"	set up a HREF name (tag)
"	default: <M-n>
" you have to type <M-n><Space> to get this to work on a mac (dead key :-( )
imap <D-n> ·Hname·
vmap <D-n> ·Hname·

