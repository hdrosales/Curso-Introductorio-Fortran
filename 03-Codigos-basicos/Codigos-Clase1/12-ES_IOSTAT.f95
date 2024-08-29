PROGRAM ReadWithIOSTAT
    INTEGER :: unit = 10
    INTEGER :: number
    INTEGER :: iostat

    ! Abrir archivo para lectura
    OPEN(UNIT=unit, FILE='input.txt', STATUS='OLD')

    ! Intentar leer un número entero del archivo
    READ(unit, *, IOSTAT=iostat) number

    ! Verificar el estado de la operación de lectura
    IF (iostat /= 0) THEN
        PRINT *, 'Error en la lectura, código de error = ', iostat
    ELSE
        PRINT *, 'Número leído exitosamente: ', number
    END IF

    ! Cerrar el archivo
    CLOSE(unit)
END PROGRAM ReadWithIOSTAT
