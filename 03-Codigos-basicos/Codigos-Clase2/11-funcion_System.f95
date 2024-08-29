program usandosystem
implicit none
INTEGER :: i,j
REAL :: A,B,Y
character (50) :: auxi

!y=A + B * x**2

A=0.0
B=0.5

OPEN(unit=40,file='test.dat')
DO I=1,20
    Y=A+B*I**2
    WRITE(40,*)I,Y
ENDDO
CLOSE(40)

! 
! call system("gnuplot gnuplot_template.gp")
! call system("mkdir plots")
! call system("mv ejemplo.png plots/")
! 

end program usandosystem
