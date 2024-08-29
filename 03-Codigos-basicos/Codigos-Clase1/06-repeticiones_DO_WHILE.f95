program pares
! programa que suma enteros pares
integer :: i , j
i=0
j=0

do while ( i <= 100)
    i = i + 2
    j = j + i
	write(*,'(A,I6,A,I6)')'i=',i,', j=',j
    ! Como registrar cada paso del loop?
enddo

write(*,*) j
end program pares
