
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version < 600
  so <sfile>:p:h/sh.vim
else
  runtime! syntax/sh.vim
  unlet b:current_syntax
endif


syn region shSingleQuote matchgroup=shQuote start=+'+ skip=+\\\\\|\\.\|\\'+ end=+'+ contains=@Spell
syn region shCommandSub matchgroup=shCmdSubRegion start="@(" skip='\\\\\|\\.' end=")" contains=@shCommandSubList
syn match shDerefSimple "@[a-zA-z0-9_]\+"
syn region shDerefSimple start="@{" end="}"

syntax keyword shFunctionKey &
syntax keyword shFunctionKey &&
syntax keyword shFunctionKey .
syntax keyword shFunctionKey ..
syntax keyword shFunctionKey alias
syntax keyword shFunctionKey and
syntax keyword shFunctionKey bg
syntax keyword shFunctionKey break
syntax keyword shFunctionKey calc
syntax keyword shFunctionKey case
syntax keyword shFunctionKey cd
syntax keyword shFunctionKey complete
syntax keyword shFunctionKey continue
syntax keyword shFunctionKey count
syntax keyword shFunctionKey dirs
syntax keyword shFunctionKey disown
syntax keyword shFunctionKey drop
syntax keyword shFunctionKey echo
syntax keyword shFunctionKey else
syntax keyword shFunctionKey end
syntax keyword shFunctionKey eval
syntax keyword shFunctionKey exec
syntax keyword shFunctionKey exit
syntax keyword shFunctionKey false
syntax keyword shFunctionKey fg
syntax keyword shFunctionKey fn
syntax keyword shFunctionKey for
syntax keyword shFunctionKey help
syntax keyword shFunctionKey history
syntax keyword shFunctionKey if
syntax keyword shFunctionKey in
syntax keyword shFunctionKey jobs
syntax keyword shFunctionKey let
syntax keyword shFunctionKey match
syntax keyword shFunctionKey matches
syntax keyword shFunctionKey mkdir
syntax keyword shFunctionKey not
syntax keyword shFunctionKey or
syntax keyword shFunctionKey popd
syntax keyword shFunctionKey pushd
syntax keyword shFunctionKey pwd
syntax keyword shFunctionKey read
syntax keyword shFunctionKey set
syntax keyword shFunctionKey source
syntax keyword shFunctionKey status
syntax keyword shFunctionKey suspend
syntax keyword shFunctionKey test
syntax keyword shFunctionKey time
syntax keyword shFunctionKey true
syntax keyword shFunctionKey unalias
syntax keyword shFunctionKey wait
syntax keyword shFunctionKey while
