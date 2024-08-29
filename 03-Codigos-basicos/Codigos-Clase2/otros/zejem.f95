program mascosas
    IMPLICIT none
    INTEGER :: i,j
    INTEGER (kind=8) :: pp1
    INTEGER (kind=16) :: pp2 
    real :: A(10),C
    
    
    
    
    
    integer,parameter :: k5 = selected_int_kind(5)
    integer,parameter :: k15 = selected_int_kind(20)
    integer(kind=k5) :: i5
    integer(kind=k15) :: i15
    real :: x1,x2,x3

    print *, huge(i5), huge(i15)
    
    i15=1234567891
    
    x1=1.0/3.0
    write(*,'(f30.20)')x1
    
!     
!     
!     A=(/(i, i=1, 10)/)
! 
!     C=12.345
!     WRITE(*,'(f10.3,10x,f10.3,f10.3,/,f10.3)')C,C,C,C
! 
!     pp1=1234567891
!     pp2=12345678912
!     
!     write(*,*) selected_int_kind(r=32)
!     write(*,*)''
!     write(*,*) selected_real_kind(p=6,r=37)
!     write(*,*) selected_real_kind(p=12)
!     write(*,*) selected_real_kind(r=100)
!     write(*,*) selected_real_kind(r=1000)
!     write(*,*) selected_real_kind(r=10000)
!     write(*,*) selected_real_kind(13,200)
!     write(*,*) selected_real_kind(13)
!     write(*,*) selected_real_kind(p=17)
!     write(*,*) selected_real_kind(p=63)
!     write(*,*) selected_real_kind(p=63,r=10000)
    
end program mascosas
