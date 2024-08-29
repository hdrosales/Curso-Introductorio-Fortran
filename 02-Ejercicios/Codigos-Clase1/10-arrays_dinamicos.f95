! Para representar numeros con mas dígitos
! gfortran  -fdefault-integer-8 Preguntas.f90 -o salida

program multiplica

real , dimension (:,:) , allocatable :: x,y

character :: fmt='(100f10.5)'


!-----------------------

!Allocate memory

allocate (x(2,2))
allocate (y(2,2))

x=2.123456789
write(*,fmt)x(1,:)
write(*,*)x(2,:)
write(*,*)' ' 
y=matmul (x,x)

write(*,*)y(1,:)
write(*,*)y(2,:)
print *
deallocate (x)
deallocate (y)

!-----------------------

allocate (x(4,4))
x= 1.0

write(*,*)x(1,:)
write(*,*)x(2,:)


write(*,*)' ' 
write(*,*)sum ( x )
deallocate (x)

endprogram multiplica
