if exists("b:current_syntax")
  finish
endif

" Comments
syn match   luxComment      "#.*$" contains=@Spell

" Strings & Escapes
syn region  luxString       start=+"+ skip=+\\\\\|\\"+ end=+"+

" Numbers & Durations (50ms, 3s, 2m, 1h, 2d)
syn match   luxNumber       "\<\d\+\(\.\d\+\)\?\>"
syn match   luxDuration     "\<\d\+\(ms\|s\|m\|h\|d\)\>"

" Time literals (08:00, 23:00)
syn match   luxTime         "\<\d\{2}:\d\{2}\>"

" Booleans
syn keyword luxBoolean      true false

" Top-level Declarations & Blocks
syn keyword luxDecl         include enum state persist service device template rule toggle bind test

" Rule & Action Clauses
syn keyword luxKeyword      when where do from to as map expose assert after debounce hold for between and or not

" Built-in Service & Driver Types
syn keyword luxServiceType  mqtt wb z2m homie homekit prometheus

" Built-in Hardware & HomeKit Kinds
syn keyword luxKind         lightbulb switch outlet fan fan_v2 thermostat heater_cooler humidifier air_purifier
syn keyword luxKind         filter_maintenance slat window_covering window door garage_door lock
syn keyword luxKind         valve faucet irrigation security_system doorbell stateless_switch battery
syn keyword luxKind         temperature humidity illuminance co2 co air_quality leak motion occupancy contact smoke

" Service & Device Properties
syn keyword luxProp         host service topic pin name model id

" Operators & Punctuation
syn match   luxOperator     "\(==\|!=\|<=\|>=\|<\|>\|=\|!\)"
syn match   luxDelimiter    "[{};(),.]"

" Highlight Links
hi def link luxComment      Comment
hi def link luxString       String
hi def link luxNumber       Number
hi def link luxDuration     Number
hi def link luxTime         Constant
hi def link luxBoolean      Boolean
hi def link luxDecl         Structure
hi def link luxKeyword      Keyword
hi def link luxServiceType  Type
hi def link luxKind         Type
hi def link luxProp         Identifier
hi def link luxOperator     Operator
hi def link luxDelimiter    Delimiter

let b:current_syntax = "lux"
