MODULE formas
  IMPLICIT NONE

  TYPE, abstract :: figura
    !real  ::lado
  CONTAINS
    PROCEDURE :: area
  END TYPE figura

  TYPE,  EXTENDS(figura) :: circulo
    REAL :: radio
    CONTAINS
      PROCEDURE :: area=>area_circulo
  END TYPE circulo


  CONTAINS
    REAL FUNCTION area(this)
      CLASS(figura), INTENT(IN) :: this
      area=0.0
    END FUNCTION

      ! Implementación del método `area` para el tipo derivado
    REAL FUNCTION area_circulo(this)
      CLASS(circulo), INTENT(IN) :: this
      area_circulo = 3.14159 * this%radio**2
    END FUNCTION area_circulo

END MODULE formas


  
PROGRAM ejemplo
  USE formas
  IMPLICIT NONE

  TYPE(circulo), POINTER :: c
  REAL :: resultado

  ! Crear una instancia de `circulo`
  ALLOCATE(c)
  c%radio = 5.0

  ! Calcular el área usando el método del tipo `circulo`
  resultado = c%area()
  PRINT *, 'Área del círculo:', resultado

  ! Liberar memoria
  DEALLOCATE(c)

END PROGRAM ejemplo














  ! Inicializar número de figuras
  num_formas = 3
  allocate(formas(num_formas))

  ! Crear instancias de las figuras
  allocate(circle)
  formas(1) => circle
  allocate(square)
  formas(2) => square
  allocate(triangle)
  formas(3) => triangle

  ! Asignar valores
  formas(1)%radius = 2.0    ! circulo
  formas(2)%side = 3.0      ! square
  formas(3)%base = 4.0      ! trinagulo, base
  formas(3)%height = 5.0    ! trinagulo, base

  ! Calcular el área total
  total_area = 0.0
  do i = 1, num_formas
    total_area = total_area + formas(i)%area()
  end do

  print *, "Área total de las figuras = ", total_area

  
  deallocate(formas(1))
  deallocate(formas(2))
  deallocate(formas(3))
  deallocate(formas)
