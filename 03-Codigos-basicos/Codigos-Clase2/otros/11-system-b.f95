program usandosystem
implicit none
INTEGER :: i,j
REAL :: A,B,Y
character (50) :: auxi

! y =A + B * x^2


A=0.0
DO J=1,10
    
    B=0.5*J

    OPEN(unit=40,file='test.dat')
    DO I=1,20
        Y=A+B*I**2
        WRITE(40,*)I,Y
    ENDDO
    CLOSE(40)

    call system('gnuplot gnuplot_template.gp')
    write(auxi,*)J
    call system('mv ejemplo.png ejemplo-'//trim(adjustl(auxi))//'.png')
    call system('mv ejemplo-* plots/')
ENDDO


end program usandosystem
