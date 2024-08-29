program leofile
implicit none

integer :: i,j,Reason
real :: a,b,c

! creo un archivo
OPEN(30,file='testfinarchivo.dat')
DO i=1,100
    WRITE(30,*) i*0.1,SIN(0.1*i)
ENDDO
CLOSE(30)
!cierro el archivo




OPEN(30,file='testfinarchivo.dat')
DO I=1,101
!    READ(30,*,IOSTAT=Reason) a,b
!    IF(Reason<0) exit
	read(30,*)a,b
    WRITE(*,*)I,a,b
ENDDO
CLOSE(30)

    
!sigue el programa y calculo algo
a=10.0
b=20.0
WRITE(*,*)'a+b= ',a+b

endprogram leofile
