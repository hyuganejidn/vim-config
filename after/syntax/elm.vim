scriptencoding utf-8

if exists('g:no_vim_fancy_text') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax match div "//" conceal cchar=÷
syntax match mul "*" conceal cchar=×
syntax match eq "===" conceal cchar=≣
syntax match neq "!=" conceal cchar=≠
syntax match gteq ">=" conceal cchar=≥
syntax match lteq "<=" conceal cchar=≤
syntax match arrow "->" conceal cchar=→
syntax match rpipe "|>" conceal cchar=⊳
syntax match lpipe "<|" conceal cchar=⊲
syntax match rcomp ">>" conceal cchar=»
syntax match lcom "<<" conceal cchar=«
syntax match lambda "\\" conceal cchar=λ
syntax match cons "::" conceal cchar=∷
syntax match parse1 "|=" conceal cchar=⊧
syntax match parse2 "|." conceal cchar=⊦
syntax match neq "/=" conceal cchar=≠

"hi! link rsFancyOperator Operator
"hi! link Conceal Operator

setlocal conceallevel=1

