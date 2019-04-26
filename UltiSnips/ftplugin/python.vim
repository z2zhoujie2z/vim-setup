nmap <C-m> :call SmartCommentpy()<CR><F12>

imap <C-m> <Home>#<Space>

func! SmartCommentpy()
	let s = getline(".")
	if s[0] == '#'
		noremap <F12> <Home>xx<CR>
	else
		noremap <F12> I<Home>#<Space><Esc><CR>
	endif

endfunc!

nmap 00 :echo &filetype<CR>