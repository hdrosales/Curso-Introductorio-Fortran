! definición del Modulo geometry que contiene lo siguiente:
! 4 types de estructuras: 
! type,abstract ::  figura
! type, extends(figura) :: circle
! type, extends(figura) :: square
! type, extends(figura) :: triangle

module geometry
    implicit none

    type,abstract ::  figura
        contains
            procedure :: area
    end type figura

    type, extends(figura) :: circle
        real :: radius
        contains
            procedure :: area => area_circle
    end type circle

    type, extends(figura) :: square
        real :: side
        contains
            procedure :: area => area_square
    end type square

    type, extends(figura) :: triangle
        real :: base, height
        contains
            procedure :: area => area_triangle
    end type triangle

    contains
        real function area(cosa)    
            class(figura), intent(in) :: cosa
            area=0.0
        end function area

        real function area_circle(cosa) 
            class(circle), intent(in) :: cosa
            ! cosa%radio debe recibir un valor antes de llamar a la funcion area_circulo
            area_circle = 3.14159265359 * cosa%radius**2 
        end function area_circle

        real function area_square(cosa)
            class(square), intent(in) :: cosa
            ! cosa%side debe recibir un valor antes de llamar a la funcion area_circulo
            area_square = cosa%side**2 
        end function area_square

        real function area_triangle(cosa)
            class(triangle), intent(in) :: cosa
            ! cosa%base and cosa%height debes recibir un valor antes de llamar a la funcion area_circulo
            area_triangle = 0.5 * cosa%base * cosa%height 
        end function area_triangle
end module geometry

program polymorphism_example
  use geometry
  implicit none
  integer :: i,n_formas
  type(triangle), pointer :: tt(:)
  type(square), pointer :: ss(:)
  type(circle), pointer :: cc(:)

  real :: total_area

  n_formas=4
  ! asignar memoria a los punteros
  allocate(tt(n_formas))
  allocate(ss(n_formas))
  allocate(cc(n_formas))

  ! Asignar valores
  do i=1,n_formas
    tt(i)%base = 4.0*i      ! trinagulo, base
    tt(i)%height = 5.0*i    ! trinagulo, altura
    ss(i)%side = 2.0*i      ! trinagulo, base
    cc(i)%radius = 1.5*i      ! circulo
  enddo


  ! Calcular el área total
  total_area = 0.0
  do i = 1, n_formas
    total_area = total_area + tt(i)%area() + ss(i)%area() + cc(i)%area()
  end do

  print *, "Área total de las figuras = ", total_area
  
  deallocate(tt)  
  deallocate(ss)  
  deallocate(cc)  
end program polymorphism_example
