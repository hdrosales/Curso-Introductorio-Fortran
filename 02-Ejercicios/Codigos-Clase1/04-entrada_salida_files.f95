program abrofile
! Declarar variables.
implicit none
integer :: edad
character(20) :: nombre

!--------- Abrir archivo de entrada.
open(10,file='entrada.dat')
! Leer datos.
read (10,*) nombre,edad
! write(*,*) nombre,edad
close(10)
!--------- Cerrar achivo de entrada.

!---------Abrir archivo de salida.
open(11,file='info/salida.dat')
! Escribir datos.
write(11,*) 'Me llamo ',nombre
write(11,*) 'Tengo ',edad,' años'
!---------Cerrar archivo de salida.
close(11)
end program abrofile
