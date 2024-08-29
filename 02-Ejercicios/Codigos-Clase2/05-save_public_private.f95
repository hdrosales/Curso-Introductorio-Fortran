MODULE counter_module
    !INTEGER,PRIVATE :: counter = 0  ! `counter` es pública por defecto
    INTEGER :: counter = 0  ! `counter` es pública por defecto

    CONTAINS
    SUBROUTINE count()
        counter = counter + 1
        PRINT *, "Counter value:", counter
    END SUBROUTINE count
END MODULE counter_module

!==============
PROGRAM public_example
    USE counter_module

    CALL count  ! Se incrementa el contador
    CALL count  ! Se incrementa el contador nuevamente
    CALL count  ! Y una vez más

    PRINT *, "Direct access to counter:", counter  ! Ahora podemos acceder directamente a `counter`
END PROGRAM public_example
!==============