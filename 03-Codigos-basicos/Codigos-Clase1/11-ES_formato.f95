! Para representar numeros con mas dígitos
! gfortran  -fdefault-integer-8 Preguntas.f90 -o salida

PROGRAM BasicIO
    INTEGER :: num
    REAL :: x
    CHARACTER(LEN=20) :: name

    ! Escribir datos en la salida estándar
    PRINT *, 'Introduce un número entero:'
    READ *, num
    PRINT *, 'Introduce un número real:'
    READ *, x
    PRINT *, 'Introduce tu nombre (máx. 20 caracteres):'
    READ *, name

    ! Escribir datos en un archivo con formato
    OPEN(UNIT=10, FILE='output.txt', STATUS='REPLACE')
    WRITE(10, '(A, I5, A, F8.2)') 'Número entero:', num, 'Número real:', x
    WRITE(10, '(A)') 'Nombre:', TRIM(name)
    CLOSE(10)
    
    ! Confirmación en la salida estándar
    PRINT *, 'Datos escritos en output.txt'
END PROGRAM BasicIO
