program arrays

real , dimension (4) :: x
integer :: M(4,4)

M(1,:)=(/1,2,3,4/)
M(2,:)=(/1,2,3,4/)
M(3,:)=(/1,2,3,4/)
M(4,:)=(/1,2,3,4/)

!DO i=1,4
	WRITE(*,'(4I4,/,4I4,/,4I4,/,4I4)')M
	!WRITE(*,'(4I4)')M(i,:)
!ENDDO
!WRITE(*,*)M(1,:)

endprogram arrays
