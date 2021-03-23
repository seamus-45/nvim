set guifont=Droid\ Sans\ Mono\ Slashed:h11

set mouse=a

" Paste with <Shift> + <Insert>
imap <S-Insert> <C-R>*
if has("clipboard")
    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y
    vnoremap <C-Insert> "*y

    imap <C-V>          <C-R>+
    imap <S-Insert>             <C-R>*
endif
