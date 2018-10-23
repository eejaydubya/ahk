#CommentFlag //
#InstallKeybdHook

#Persistent
SetCapsLockState, AlwaysOff

//---------- Function Row ------------------------------------------------------
Capslock & 1::SendInput {Blind}{F1}

Capslock & 2::SendInput {Blind}{F2}

Capslock & 3::SendInput {Blind}{F3}

Capslock & 4::SendInput {Blind}{F4}

Capslock & 5::SendInput {Blind}{F5}

Capslock & 6::SendInput {Blind}{F6}

Capslock & 7::SendInput {Blind}{F7}

Capslock & 8::SendInput {Blind}{F8}

Capslock & 9::SendInput {Blind}{F9}

Capslock & 0::SendInput {Blind}{F10}

Capslock & [::SendInput {Blind}{F11}

Capslock & ]::SendInput {Blind}{F12}

Capslock & BS::SendInput {Del Down}
Capslock & BS up::SendInput {Del Up}

//---------- QWERTY Row --------------------------------------------------------
`::SendInput {Esc}
Shift & `::SendInput {~}
CapsLock & `::SendInput {`}

CapsLock & '::SendInput {Media_Prev}

CapsLock & ,::SendInput {Media_Play_Pause}

CapsLock & .::SendInput {Media_Next}

CapsLock & f::Run calc.exe

Capslock & g::SendInput {Blind}{PgUp Down}
Capslock & g up::SendInput {Blind}{PgUp Up}

Capslock & c::Send {Blind}{Up DownTemp}
Capslock & c up::Send {Blind}{Up Up}

Capslock & r::SendInput {Blind}{PgDn Down}
Capslock & r up::SendInput {Blind}{PgDn Up}

Capslock & l::SendInput {PrintScreen}

//---------- ASDF Row ----------------------------------------------------------
CapsLock & a::SendInput {Volume_Mute}

CapsLock & o::SendInput {Volume_Down}

CapsLock & e::SendInput {Volume_Up}

Capslock & d::SendInput {Blind}{Home Down}
Capslock & d up::SendInput {Blind}{Home Up}

Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & t::Send {Blind}{Down DownTemp}
Capslock & t up::Send {Blind}{Down Up}

Capslock & n::Send {Blind}{Right DownTemp}
Capslock & n up::Send {Blind}{Right Up}

Capslock & s::SendInput {Insert}

Capslock & -::SendInput {Delete}

// Make Capslock & Enter equivalent to Control+Enter
Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}

//---------- ZXCV Row ----------------------------------------------------------
CapsLock & ;::SendInput {AppsKey}

Capslock & b::SendInput {Blind}{End Down}
Capslock & b up::SendInput {Blind}{End Up}

//---------- SPACE Row ---------------------------------------------------------
// Make Capslock & Space equivalent to Control+Space
Capslock & Space::SendInput {Ctrl down}{Space}{Ctrl up}

// Make Win Key + Capslock work like Capslock
#Capslock:
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else
    SetCapsLockState, AlwaysOn
Return
