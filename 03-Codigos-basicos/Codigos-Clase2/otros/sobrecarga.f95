MODULE sobrecarga
  implicit none

  interface operator (+)
  	module procedure concatena
  end interface

  contains
  function concatena(cha,chb)
    implicit none
    character (len=*), intent(in) :: cha,chb

    character (len=(len_trim(cha)+len_trim(chb))) :: concatena
    concatena=trim(cha)//trim(chb)

  end function concatena

END MODULE sobrecarga








program mascosas
USE sobrecarga
IMPLICIT none

REAL :: x1, x2,x3
  character (len=10) ::a,b
  character (len=40) ::c

  a='caso'
  b='_numero2'

  c=a+b
  write(*,*)a,b,c

  x1=1.5
  x2=2.0
  x3=x1+x2
  WRITE(*,*)x1,x2,x3	 



end program mascosas
