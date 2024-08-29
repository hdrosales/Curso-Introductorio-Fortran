program abc
  implicit none
  real :: a, b, c
  interface
    real function hypotenuse(a,b)
      real, intent(in) :: a, b
    end function 
  endinterface
  write(*,*)'Ingrese dos números reales:'
  read(*,*) a, b
  c=hypotenuse(a,b)
  write(*,*) c
end program
!---------------------------


real function hypotenuse(a,b)
  implicit none
  real, intent(in) :: a, b
  real :: temp
  temp = a**2 + b**2
  hypotenuse = sqrt(temp)
end function 
