" Language: Pathway
" Maintainer: Taylor Holberton

if exists ("b:current_syntax")
  finish
endif

syn keyword ptStmt export import module
syn keyword ptStmt break return continue
syn keyword ptCond if else switch case default
syn keyword ptRepeat while for
syn keyword ptType void bool int float
syn keyword ptType vec2 vec3 vec4
syn keyword ptType vec2i vec3i vec4i
syn keyword ptType mat2 mat3 mat4
syn keyword ptQual uniform varying
syn keyword ptConstant true false infinity pi
syn keyword ptOperator dot cross
syn keyword ptOperator clamp abs ceil floor degrees radians
syn keyword ptOperator normalize distance length
syn keyword ptOperator mod
syn keyword ptOperator mix
syn keyword ptOperator min max
syn keyword ptOperator reflect refract
syn keyword ptOperator sign
syn keyword ptOperator sqrt
syn keyword ptOperator sin cos tan asin acos atan
syn keyword ptOperator exp pow log

syn match ptNumbers display transparent "\<\d\|\.\d" contains=ptInteger,ptFloat
syn match ptInteger  display contained "\d\+"
syn match ptFloat    display contained "\d\+\.\d*\(e[-+]\=\d\+\)\="
syn match ptFloat    display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
syn match ptFloat    display contained "\d\+e[-+]\=\d\+\>"

syn region ptBlock start="{" end="}" transparent fold

syn region ptComment start="//" skip="\\$" end="$" keepend

let b:current_syntax = "pt"

hi def link ptStmt Statement
hi def link ptRepeat Repeat
hi def link ptType Type
hi def link ptCond Conditional
hi def link ptQual StorageClass
hi def link ptFloat Float
hi def link ptInteger Number
hi def link ptConstant Constant
hi def link ptOperator Operator
hi def link ptComment Comment
