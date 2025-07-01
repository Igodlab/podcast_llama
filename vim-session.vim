let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/clipclap/podcast_llama
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/Documents/podcast_llama/src/audiogen/tts/tts.py
badd +1 ~/Documents/podcast_llama/src/audiogen/tts/__init__.py
badd +1 ~/Documents/podcast_llama/src/audiogen/models/models.py
badd +1 ~/Documents/podcast_llama/src/audiogen/models/__init__.py
badd +1 ~/Documents/podcast_llama/src/audiogen/utils/utils.py
badd +1 ~/Documents/podcast_llama/src/audiogen/utils/__init__.py
badd +1 ~/Documents/podcast_llama/src/audiogen/__init__.py
badd +1 neo-tree\ filesystem\ \[4]
badd +1 ~/Documents/podcast_llama/data/voices/british-woman-monologue-01.mp3
badd +8 ~/Documents/clipclap/podcast_llama/src/audiogen/tts/tts.py
badd +1 ~/Documents/clipclap/podcast_llama/src/audiogen/tts/__init__.py
badd +1 ~/Documents/clipclap/podcast_llama/src/audiogen/models/models.py
badd +1 ~/Documents/clipclap/podcast_llama/src/audiogen/models/__init__.py
badd +1 ~/Documents/clipclap/podcast_llama/src/audiogen/utils/utils.py
badd +1 ~/Documents/clipclap/podcast_llama/src/audiogen/utils/__init__.py
badd +1 ~/Documents/clipclap/podcast_llama/config/__init__.py
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/clipclap/podcast_llama/src/audiogen/tts/tts.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/Documents/podcast_llama/src/audiogen/tts/tts.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 7,17fold
sil! 22,27fold
sil! 32,33fold
sil! 31,34fold
sil! 30,35fold
sil! 38,39fold
sil! 37,40fold
sil! 36,41fold
sil! 18,43fold
sil! 45,53fold
sil! 65,72fold
sil! 61,73fold
sil! 59,74fold
sil! 54,75fold
sil! 6,75fold
let &fdl = &fdl
let s:l = 8 - ((7 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/clipclap/podcast_llama/src/audiogen/tts/__init__.py", ":p")) | buffer ~/Documents/clipclap/podcast_llama/src/audiogen/tts/__init__.py | else | edit ~/Documents/clipclap/podcast_llama/src/audiogen/tts/__init__.py | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/clipclap/podcast_llama/src/audiogen/tts/__init__.py
endif
balt ~/Documents/podcast_llama/src/audiogen/tts/__init__.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
wincmd =
tabnext
edit ~/Documents/clipclap/podcast_llama/src/audiogen/models/models.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/Documents/podcast_llama/src/audiogen/models/models.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 10,15fold
sil! 21,22fold
sil! 20,26fold
sil! 38,45fold
sil! 50,52fold
sil! 57,59fold
sil! 64,67fold
sil! 68,75fold
sil! 79,80fold
sil! 78,81fold
sil! 77,87fold
sil! 89,97fold
sil! 102,105fold
sil! 107,108fold
sil! 110,112fold
sil! 121,128fold
sil! 120,129fold
sil! 98,132fold
sil! 63,132fold
sil! 136,138fold
sil! 142,143fold
sil! 150,151fold
sil! 139,153fold
sil! 158,165fold
sil! 174,176fold
sil! 173,176fold
sil! 179,180fold
sil! 182,185fold
sil! 186,189fold
sil! 181,189fold
sil! 178,189fold
sil! 166,196fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/clipclap/podcast_llama/src/audiogen/models/__init__.py", ":p")) | buffer ~/Documents/clipclap/podcast_llama/src/audiogen/models/__init__.py | else | edit ~/Documents/clipclap/podcast_llama/src/audiogen/models/__init__.py | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/clipclap/podcast_llama/src/audiogen/models/__init__.py
endif
balt ~/Documents/podcast_llama/src/audiogen/models/__init__.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 3,8fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
wincmd =
tabnext
edit ~/Documents/clipclap/podcast_llama/src/audiogen/utils/utils.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/Documents/podcast_llama/src/audiogen/utils/utils.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 10,11fold
sil! 12,14fold
sil! 17,21fold
sil! 29,30fold
sil! 25,31fold
sil! 40,43fold
sil! 45,46fold
sil! 48,49fold
sil! 65,70fold
sil! 88,89fold
sil! 95,97fold
sil! 98,99fold
sil! 84,99fold
sil! 79,105fold
sil! 75,105fold
sil! 108,109fold
sil! 106,110fold
sil! 61,112fold
sil! 115,116fold
sil! 36,118fold
sil! 127,130fold
sil! 132,133fold
sil! 136,140fold
sil! 161,163fold
sil! 158,163fold
sil! 154,163fold
sil! 151,163fold
sil! 165,169fold
sil! 177,178fold
sil! 176,180fold
sil! 182,185fold
sil! 186,189fold
sil! 170,189fold
sil! 146,189fold
sil! 192,193fold
sil! 123,195fold
sil! 204,205fold
sil! 218,220fold
sil! 200,220fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/clipclap/podcast_llama/src/audiogen/utils/__init__.py", ":p")) | buffer ~/Documents/clipclap/podcast_llama/src/audiogen/utils/__init__.py | else | edit ~/Documents/clipclap/podcast_llama/src/audiogen/utils/__init__.py | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/clipclap/podcast_llama/src/audiogen/utils/__init__.py
endif
balt ~/Documents/podcast_llama/src/audiogen/utils/__init__.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 1,5fold
sil! 8,12fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
wincmd =
tabnext
edit ~/Documents/clipclap/podcast_llama/config/__init__.py
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/Documents/podcast_llama/src/audiogen/__init__.py
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
