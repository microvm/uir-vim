" Vim syntax file
" Language: MicroVM Intermediate Representation (Text Form)
" Maintainer: Kunshan Wang
" Latest Revision: 10 Nov 2014

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=.

syntax region uirComment start=/\/\// end=/$/

syntax keyword uirTopLevel .typedef .funcsig .const .global .funcdecl .funcdef .expose
syntax keyword uirType int float double ref iref weakref struct array hybrid void
syntax keyword uirType funcref stackref threadref framecursorref
syntax keyword uirType tagref64 vector uptr ufuncptr
syntax keyword uirInst ADD SUB MUL UDIV SDIV UREM SREM SHL LSHR ASHR AND OR XOR
syntax keyword uirInst FADD FSUB FMUL FDIV FREM
syntax keyword uirInst EQ NE ULT ULE UGT UGE SLT SLE SGT SGE
syntax keyword uirInst FTRUE FFALSE FORD FOEQ FONE FOLT FOLE FOGT FOGE
syntax keyword uirInst FUNO FUEQ FUNE FULT FULE FUGT FUGE
syntax keyword uirInst TRUNC ZEXT SEXT FPTRUNC FPEXT FPTOUI FPTOSI UITOFP SITOFP
syntax keyword uirInst BITCAST REFCAST PTRCAST
syntax keyword uirInst SELECT BRANCH BRANCH2 SWITCH CALL TAILCALL
syntax keyword uirInst RET THROW EXTRACTVALUE INSERTVALUE
syntax keyword uirInst EXTRACTELEMENT INSERTELEMENT SHUFFLEVECTOR
syntax keyword uirInst NEW NEWHYBRID ALLOCA ALLOCAHYBRID GETIREF GETFIELDIREF
syntax keyword uirInst GETELEMIREF SHIFTIREF GETVARPARTIREF
syntax keyword uirInst LOAD STORE CMPXCHG ATOMICRMW FENCE TRAP WATCHPOINT WPBRANCH
syntax keyword uirInst CCALL NEWTHREAD SWAPSTACK COMMINST
syntax keyword uirMemOrder NOT_ATOMIC RELAXED CONSUME ACQUIRE RELEASE ACQ_REL SEQ_CST
syntax keyword uirAtomicRMWOp XCHG ADD SUB AND NAND OR XOR MIN MAX UMIN UMAX
syntax keyword uirMisc bitsf bitsd VERSION EXC KEEPALIVE WEAK WPEXC PTR
syntax keyword uirMisc RET_WITH KILL_OLD
syntax keyword uirMisc PASS_VALUES THROW_EXC

syntax match uirIdentifier /[@%][a-zA-Z0-9_\-.]\+/

syntax match uirIntLiteral /[+-]\?\(0[xX][0-9a-fA-F]\+\|0[0-7]*\|[1-9][0-9]*\)/

syntax match uirFpLiteral /\([0-9]\+\.[0-9]\+\(e[+-]\?[0-9]\+\)\?\|nan\|[+-]\?inf\)[fd]/

syntax match uirNullLiteral /NULL/

syntax region uirAngularBrackets start=/</ end=/>/ contains=ALL

syntax match uirFlag /#[A-Z_]\+/

highlight link uirComment Comment
highlight link uirTopLevel Statement
highlight link uirType Type
highlight link uirInst Operator
highlight link uirMemOrder Keyword
highlight link uirAtomicRMWOp Keyword
highlight link uirMisc Keyword
highlight link uirFlag Keyword
highlight link uirIdentifier Identifier
highlight link uirIntLiteral Number
highlight link uirFpLiteral Float
highlight link uirNullLiteral Constant
