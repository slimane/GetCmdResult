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
    return matchstr(l:var, '\n\zs\(.\|\n\)*\ze$')
endfunction


function! s:silentExecute(cmd)
    execute 'silent ' . a:cmd
endfunction




let &cpo = s:save_cpo
let g:GetCmdResult_loading = 1
