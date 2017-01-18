MessageBoxA PROTO :DWORD,:DWORD,:DWORD,:DWORD
ExitProcess PROTO :DWORD
.data
MsgCaption      db 'Win64 Iczelion''s lesson #2: MessageBox',0
MsgBoxText      db 'Win64 Assembly is Great!',0
.code
Start proc 
    sub rsp,5*8
    xor ecx,ecx;NULL
    mov r9,rcx;MB_OK
    lea rdx, MsgBoxText
    lea r8, MsgCaption
        call MessageBoxA
        xor ecx,ecx
    call ExitProcess
Start endp
end