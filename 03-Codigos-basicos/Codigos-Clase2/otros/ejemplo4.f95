!---------------------------------
! Probar compilar por separado
!---------------------------------

MODULE cambio_escalas_T
! -------------------------------------------------
! F2C: Función que convierte de la escala Fahrenheit a la escala centígrada.
! C2F: Función que convierte de la escala centígrada a la escala Fahrenheit.
! -------------------------------------------------

  CONTAINS
    REAL FUNCTION F2C(T)
	IMPLICIT NONE
	REAL, INTENT(IN) :: T
	F2C = (T - 32.0)/1.8
    END FUNCTION F2C
  
    REAL FUNCTION C2F(T)
	IMPLICIT NONE
	REAL, INTENT(IN) :: T
	C2F = 1.8*T + 32.0
    END FUNCTION C2F
END MODULE cambio_escalas_T


!---------------------


PROGRAM ejemplo4

   USE cambio_escalas_T! con esto usamos el módulo
!   USE cambio_escalas_T,only: Far2Cel=>C2F! con esto usamos el módulo


  IMPLICIT NONE
  REAL :: tC, tF
  ! -----------------------------------------------------
  WRITE(*,*) 'Ingrese la temperatura en grados centígrados'
  READ(*,*) tC
  
  
  tF = C2F(tC)

  
  WRITE(*,*) 'La temperatura en grados centígrados = ', tC


  WRITE(*,*) 'La temperatura en grados Fahrenheit = ', tF
  ! -----------------------------------------------------
END PROGRAM ejemplo4
