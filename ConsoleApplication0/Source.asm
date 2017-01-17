.386
 
.model flat,stdcall
includelib kernel32.lib

ExitProcess PROTO		:DWORD
MessageBoxA PROTO		:DWORD, :DWORD, :DWORD, :DWORD


.data

sText db 'Hello world!',0
 
.code
 
Start:
	invoke MessageBoxA, 0, offset sText, 0, 0
	invoke ExitProcess, 0
end Start