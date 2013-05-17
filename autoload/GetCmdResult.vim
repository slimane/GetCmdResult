if exists('g:GetCmdResult_loading')
    finish
endif

let s:save_cpo = &cpo
set cpo&vim




function! GetCmdResult#Get(cmd)
    let @* = s:getCmdResult(a:cmd)
endfunction


function! s:getCmdResult(cmd)
    redir => l:var
    call s:silentExecute(a:cmd)
    redir end
    return l:var =~? '^\n' ? l:var[1:-1] : l:var
endfunction


function! s:silentExecute(cmd)
    silent execute a:cmd
endfunction




let &cpo = s:save_cpo
let g:GetCmdResult_loading = 1
