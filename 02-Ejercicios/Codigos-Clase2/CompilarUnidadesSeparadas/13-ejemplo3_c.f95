  SUBROUTINE imprimir_area(a)
  !----------------------------------------
  ! Declaración de argumentos formales
  !----------------------------------------
  IMPLICIT NONE
  REAL, INTENT(IN) :: a
  !----------------------------------------
  ! Salida de datos
  !----------------------------------------
  WRITE(*,*) 'Area =', a
  !----------------------------------------
  END SUBROUTINE imprimir_area