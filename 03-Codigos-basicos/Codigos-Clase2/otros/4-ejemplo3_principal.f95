PROGRAM principal
  !----------------------------------------
  ! Declaración de variables
  !----------------------------------------
  IMPLICIT NONE
  REAL :: radio, area
  !----------------------------------------
  ! Declaración de subprogramas utilizados
  !----------------------------------------
  INTERFACE
    SUBROUTINE leer_radio(radio)
    	IMPLICIT NONE
    	REAL, INTENT(OUT) :: radio
    END SUBROUTINE leer_radio
    
    FUNCTION calcular_area(radio)
    	IMPLICIT NONE
    	REAL :: calcular_area
    	REAL, INTENT(IN) :: radio
    END FUNCTION calcular_area
    
    SUBROUTINE imprimir_area(a)
    	IMPLICIT NONE
    	REAL, INTENT(IN) :: a
    END SUBROUTINE imprimir_area
  END INTERFACE
!----------------------------------------
! Invocar subprogramas
!----------------------------------------
  CALL leer_radio(radio)
  area = calcular_area(radio)
  CALL imprimir_area(area)
!----------------------------------------
END PROGRAM principal




























