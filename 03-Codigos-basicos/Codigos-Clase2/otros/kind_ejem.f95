! Para representar numeros con mas dígitos
! gfortran  -fdefault-integer-8 program.f90 -o salida
program kindpro
IMPLICIT NONE

INTEGER, PARAMETER :: entero_grande=selected_int_kind(5)
INTEGER, PARAMETER :: real_grande=selected_real_kind(12,100)
real :: x

integer(kind=entero_grande)::ilar
real(kind=real_grande)::rlar



x = 0.025
      write(*,110) 'x=', x
  110 format (A,F5.3)
      write(*,130) 'x=', x
  130 format (A,E8.2)
  
ilar=1234567  
write(*,*)  ilar

rlar=1234567.1254679  
write(*,*)  rlar

endprogram kindpro
