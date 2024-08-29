
PROGRAM ejemplo4
  USE cambio_escalas_T! con esto usamos el módulo
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