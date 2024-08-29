  program abc
    implicit none
    real :: a, b, c
    !--------	
    INTERFACE
      subroutine hypotenuse(a,b,c)
        real, intent(in) :: a, b
        real, intent(out) :: c
        real :: temp
      end subroutine
    END INTERFACE
    !--------	
    write(*,*)'Ingrese dos números separados por un espacio'
    read(*,*) a, b
    call hypotenuse(a,b,c)


    write(*,*) c
  end program abc


  subroutine hypotenuse(a,b,c)
    implicit none
    real, intent(in) :: a, b
    real, intent(out) :: c
    real :: temp
    temp = a**2 + b**2
    c = sqrt(temp)
  end subroutine

