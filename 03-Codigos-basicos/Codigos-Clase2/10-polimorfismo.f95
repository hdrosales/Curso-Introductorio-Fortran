MODULE formas
  IMPLICIT NONE

  TYPE figura
    !real  ::lado
    CONTAINS
      PROCEDURE :: area
  END TYPE figura

  TYPE, EXTENDS(figura) :: circulo
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