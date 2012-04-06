" Author        : Manpreet Singh < junkblocker@yahoo.com >    " {{{
" Copyright     : 2006-2012 by Manpreet Singh
" License       : This file is placed in the public domain.
"                 No warranties express or implied. Use at your own risk.
"}}}
let s:PRemote = {}
let s:git = {}

function! s:git.Detect() " {{{
  return isdirectory('.git')
endfunction
" }}}

function! s:git.GetDiff() " {{{
  let l:diff = s:PRemote.GenDiff('git diff -p -U5 --no-color')
  return {'strip': 1, 'diff': l:diff}
endfunction
" }}}

function! patchreview#git#register(remote) "{{{
  let s:PRemote = a:remote
  return s:git
endfunction
" }}}

" vim: set et fdl=99 fdm=marker fenc= ff=unix ft=vim sts=0 sw=2 ts=2 tw=79 nowrap :
