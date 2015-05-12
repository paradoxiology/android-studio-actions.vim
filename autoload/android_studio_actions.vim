" android_studio_actionss.vim - Operate Android Studio from Vim {{{
" Version: 0.0.1
" Copyright (C) 2014 Yuta ToKoRo <https://github.com/tokorom/>
" Copyright (C) 2015 Paradoxiology <https://github.com/paradoxiology/>
" Last Modified: May 12, 2015
" License: MIT license {{{
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
" OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
" CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
" SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" }}}

" initialize "{{{

let spath = expand('<sfile>:p')
let s:android_studio_actions_script = spath[0 : strridx(spath, 'autoload') - 1] . 'bin/android_studio_actions'

"}}}

" public functions "{{{

function! android_studio_actions#build() "{{{
  call s:execute_android_studio_actions_script('build', '')
endfunction "}}}

function! android_studio_actions#run() "{{{
  call s:execute_android_studio_actions_script('run', '')
endfunction "}}}

function! android_studio_actions#openfile(filename) "{{{
  call s:execute_android_studio_actions_script('openfile', a:filename)
endfunction "}}}

function! android_studio_actions#current_file() "{{{
  let filename = expand('%:t')
  let line = line('.')
  return filename . ':' . line
endfunction "}}}

"}}}

" private functions "{{{

function! s:execute_android_studio_actions_script(action, arg) "{{{
  let command = s:android_studio_actions_script . ' ' . a:action . ' ' . a:arg
  call system(command)
endfunction "}}}

"}}}

" Fin. "{{{
" __END__
" vim: foldmethod=marker
