  FUNCTION calcular_area(radio)
  !----------------------------------------
  ! Declaración de tipo de la función y
  ! de los argumentos formales
  !----------------------------------------
  IMPLICIT NONE
  REAL :: calcular_area
  REAL, INTENT(IN) :: radio
  !----------------------------------------
  ! Declaración de variables
  !----------------------------------------
  REAL, PARAMETER :: PI = 3.14159
  !----------------------------------------
  ! Cálculo de la función
  !----------------------------------------
  calcular_area = PI*radio**2
  !----------------------------------------
  END FUNCTION calcular_area
  
  
