.model small
.stack 100h
.data 
text db "hello world",10,13,"$"
text2 db "Pronoy$" 
.code
  main proc
    mov ax,@data
    mov ds,ax  
    
mov ah,9
lea dx,text 
int 21h



mov ah,9
lea dx,text2
int 21h
    
mov ah,2
mov dx,"A"
int 21h   

mov ah,1  
int 21h
mov bh,al

mov ah,2
mov dh,bh
int 21h

    
    
    

mov ah,4ch
int 21h
main endp
  end main                          