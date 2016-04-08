" Vim syntax file
" Language: MicroVM Heap Allocation and Initialization Language (HAIL)
" Maintainer: Kunshan Wang
" Latest Revision: 10 Nov 2014

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=.

syntax region hailComment start=/\/\// end=/$/

syntax keyword hailTopLevel .new .newhybrid .init

syntax match hailIdentifier /[@%$][a-zA-Z0-9_\-.]\+/

syntax match hailIntLiteral /[+-]\?\(0[xX][0-9a-fA-F]\+\|0[0-7]*\|[1-9][0-9]*\)/

syntax match hailFpLiteral /\([0-9]\+\.[0-9]\+\(e[+-]\?[0-9]\+\)\?\|nan\|[+-]\?inf\)[fd]/

syntax match hailNullLiteral /NULL/

syntax region hailAngularBrackets start=/</ end=/>/ contains=ALL

syntax match hailFlag /#[A-Z_]\+/

syntax match hailOperator /[*&{}]/

highlight link hailComment Comment
highlight link hailTopLevel Statement
highlight link hailIdentifier Identifier
highlight link hailIntLiteral Number
highlight link hailFpLiteral Float
highlight link hailNullLiteral Constant
highlight link hailFlag Keyword
highlight link hailOperator Operator
