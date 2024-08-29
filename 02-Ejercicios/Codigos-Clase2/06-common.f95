PROGRAM common_example
    IMPLICIT NONE
    INTEGER :: i

    ! Declarar una variable en el bloque COMMON
    INTEGER :: shared_var
    COMMON /my_common/ shared_var

    shared_var = 10  ! Asignar valor a la variable compartida

    PRINT *, 'Value in main program before calling subroutine:', shared_var

    ! Llamar a la subrutina
    CALL modify_shared_var()

    PRINT *, 'Value in main program after calling subroutine:', shared_var
END PROGRAM common_example

SUBROUTINE modify_shared_var()
    IMPLICIT NONE

    ! Declarar la misma variable en el bloque COMMON
    INTEGER :: shared_var
    COMMON /my_common/ shared_var

    shared_var = shared_var + 5  ! Modificar el valor de la variable compartida

    PRINT *, 'Value in subroutine:', shared_var
END SUBROUTINE modify_shared_var