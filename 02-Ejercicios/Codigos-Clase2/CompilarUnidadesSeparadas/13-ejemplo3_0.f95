! Probar Compilación por separado de las unidades del programa.


! 1) Compilar todas las fuentes
!gfortran  ejemplo3_principal.f95 ejemplo3_a.f95 ejemplo3_b.f95 ejemplo3_c.f95 -o salida


! 2) Generar los objetos
!
!gfortran  -c ejemplo3_principal.f95 
!gfortran  -c ejemplo3_a.f95
!gfortran  -c ejemplo3_b.f95
!gfortran  -c ejemplo3_c.f95

!gfortran ejemplo3_principal.o ejemplo3_a.o ejemplo3_b.o ejemplo3_c.o -o todo2



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
