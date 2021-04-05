title array element reversal
INCLUDE Irvine32.inc
.data
	array BYTE 10,20,30,40,50,60,70,80,90,95
	comma BYTE ",",0

.code
main PROC
	mov ecx,10
	mov esi,0
	L2:
		movsx eax,[array+esi*1]
		call WriteInt
		mov edx,offset comma
		call WriteString
		inc esi
	loop L2
	call CRLF



	mov ecx,5
	mov esi,0
	mov edi,9
	A1:
		;MOVE 10 TO EAX
		mov al,[array+esi*1]
		;XCHG EAX WITH 95
		xchg al,[array+edi*1]
		;MOVE 95 TO array[0]
		mov [array+esi*1],al
		inc esi
		dec edi

	LOOP A1
	mov ecx,10
	mov esi,0
	L3:
		movsx eax,[array+esi*1]
		call WriteInt
		mov edx,offset comma
		call WriteString
		inc esi
	loop L3
	call CRLF
	exit
main ENDP
END main