" TODO レジスタをしてできるようにする
" -registerだと挙動が微妙なので、引数で処理したい
command! -nargs=1 -complete=var GetCmdResult :call GetCmdResult#Get(<f-args>)
