program variables
implicit none
! Declaro variables 
logical :: isAlive
integer :: i
real :: a
character(30) :: texto

!---------------
i = 1
a = 2.5
texto = 'Estas son las variables'
isAlive=1>0
!----------------

write(*,*) texto
write(*,*)isAlive , i , a

!----------------

end program variables
