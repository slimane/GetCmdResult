" TODO レジスタをしてできるようにする
" -registerだと挙動が微妙なので、引数で処理したい
command! -nargs=1 GetCmdResult :call GetcmdResult#Get(<f-args>)
