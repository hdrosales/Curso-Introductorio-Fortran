!----------------------------------------------------------
! Definicion de funciones y subrutinas externas
!----------------------------------------------------------
  
  SUBROUTINE leer_radio(radio)
  !----------------------------------------
  ! Declaración de argumentos formales
  !----------------------------------------
  IMPLICIT NONE
  REAL, INTENT(OUT) :: radio
  !----------------------------------------
  ! Ingreso de datos
  !----------------------------------------
  WRITE(*,*) 'Ingrese radio'
  READ(*,*) radio
  !----------------------------------------
  END SUBROUTINE leer_radio
  
  
