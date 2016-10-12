" Vim Syntax File
" For the USE program
" Maintainer : Jonathan Lavigne
" Made on : 11 October 2016

if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword basicKeywords abstract class attributes operations constraints end model
syn keyword basicKeywords association composition aggregation role ordered between
syn keyword basicKeywords context inv pre post enum
syn keyword typeKeywords Integer Real Boolean String
syn keyword containersKeyword Set OrderedSet Bag Sequence

" Regex Matches
syn match className 'class \a+\w+'
syn match assocName '$(className)\[.+\]'
syn match comments '--.*$'

" Integer with - + or nothing in front
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'

" Floating point like number with E and no decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Regions
syn region classBlock start="class" end="end" fold transparent
syn region assocBlock start="between" end="end" fold transparent

let b:current_syntax = "use"

highlight basicKeywords ctermfg=Blue
highlight containersKeywords ctermfg=Yellow
highlight typeKeywords ctermfg=Yellow
highlight comments ctermfg=Cyan 
hi def link classBlock Statement
hi def link assocBlock Statement
hi def link className Type
hi def link assocName Type
