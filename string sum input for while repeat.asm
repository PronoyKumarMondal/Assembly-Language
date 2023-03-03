.model small ;code kiporiman resource use korbe
.stack 100h
.data 
;declare variable here   
text db "Input a number:$"
text2 db "SUM:$"
.code
main proc  
    ;initialize data segment
    mov ax,@data
    mov ds,ax               
;write code here

mov ah,9
lea dx,text
       
int 21h
  
mov ah,1
int 21h 
mov bh,al 

mov ah,2
mov dl,10
       
int 21h  
mov ah,2
mov dl,13
       
int 21h 



mov ah,9
lea dx,text
       
int 21h
 
mov ah,1
int 21h 
mov bl,al

mov ah,2
mov dl,10
       
int 21h
  
mov ah,2
mov dl,13
       
int 21h   
 
mov ah,9
lea dx,text2
       
int 21h  
   

mov ah,2 
add bh,bl
sub bh,48
mov dl,bh
int 21h  

mov ah,2
mov dl,10
       
int 21h
  
mov ah,2
mov dl,13
       
int 21h  

;for loop

mov cx,20
mov ah,2
mov dl,'*'

top:
int 21h
loop top

;while loop 
mov dx,0
mov ah,1
int 21h
while_:
cmp al,0dh
je end_while
inc dx
int 21h
jmp while_
end_while:
         
mov ah,2
mov dl,10
       
int 21h
  
mov ah,2
mov dl,13
       
int 21h     

;repeat   
mov ah,1
repeat:
int 21h
cmp al,' '
jne repeat


     

 
 
;return control to DOS    
    
mov ah,4ch
int 21h
main endp
    end main
                   