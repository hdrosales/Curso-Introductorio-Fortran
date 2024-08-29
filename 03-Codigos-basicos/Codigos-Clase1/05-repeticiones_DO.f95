program pares
! programa que suma enteros pares
!
implicit none
integer :: i , j,v(3)
real :: r

!j = 0
write(*,*)j
v=(/1,2,3/)

do i = 2 , 100 , 2
	j = j + i
	write(*,'(2I8)')i,j
	! Como registrar cada paso del loop?
        ! que pasa si el indice i es real?
enddo

write(*,*) j
end program pares




