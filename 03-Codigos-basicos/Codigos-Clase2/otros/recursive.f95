PROGRAM Compute_Factorial
IMPLICIT NONE

INTERFACE 
   FUNCTION Factorial(n)
     INTEGER :: Factorial
     INTEGER, INTENT(IN) :: n
   END FUNCTION Factorial
END INTERFACE

! Declaro variables locales
INTEGER :: n
write(*, '(A)', ADVANCE = 'NO') 'Ingrese n para calcular  n!:  '
read(*,*) n

! escribimos el n! llamando a la función recursiva
write(*,'(I4,2x,A,2x,I12)') n, "factorial es ", Factorial(n)


! 100 format (I3, 2x, A, 2x, I12)

END PROGRAM Compute_Factorial

!-----Factorial------------------------------------------------------
!
!  Función para cacular el factorial  recursivamente
!
!---------------------------------------------------------------------
RECURSIVE FUNCTION Factorial(n)  RESULT(Fact)

IMPLICIT NONE
INTEGER :: Fact
INTEGER, INTENT(IN) :: n

IF (n == 0) THEN
   Fact = 1
ELSE
   Fact = n * Factorial(n-1)
END IF

END FUNCTION Factorial