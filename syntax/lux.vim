if exists("b:current_syntax")
  finish
endif

" Comments
syn match luxComment "#.*$" contains=@Spell

" Strings
syn region luxString start=+"+ skip=+\\\\\|\\"+ end=+"+

" Numbers, Clock (HH:MM) and Durations (50ms, 5s, 2m, 1h, 7d)
syn match luxClock "\<\d\{2\}:\d\{2\}\>"
syn match luxDuration "\<\d\+\(\.\d\+\)\?\(ms\|s\|m\|h\|d\)\>"
syn match luxNumber "\<\d\+\(\.\d\+\)\?\>"

" Booleans
syn keyword luxBoolean true false

" Top-level declarations & structure
syn keyword luxKeyword include enum persist state device template rule from toggle bind to
syn keyword luxBlock when where do after
syn keyword luxDeviceProp model id map as

" Logical & timing modifiers
syn keyword luxModifier and or between debounce hold for
syn keyword luxSpecialVar time

" Built-in drivers
syn keyword luxDriver wb z2m homie

" Device.Control references (e.g. hall_light.K1)
syn match luxDeviceRef "\<[A-Za-z_][A-Za-z0-9_-]*\.[A-Za-z_][A-Za-z0-9_-]*\>"

" Operators
syn match luxOperator "\(==\|!=\|<=\|>=\|<\|>\|=\|!\)"

" Highlighting links
hi def link luxComment     Comment
hi def link luxString      String
hi def link luxClock       Number
hi def link luxDuration    Number
hi def link luxNumber      Number
hi def link luxBoolean     Boolean
hi def link luxKeyword     Keyword
hi def link luxBlock       Conditional
hi def link luxDeviceProp  Type
hi def link luxModifier    Operator
hi def link luxSpecialVar  Special
hi def link luxDriver      Constant
hi def link luxDeviceRef   Identifier
hi def link luxOperator    Operator

let b:current_syntax = "lux"
