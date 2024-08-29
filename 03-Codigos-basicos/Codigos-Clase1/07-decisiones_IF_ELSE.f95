PROGRAM ClasificarClima
REAL :: temp
!Asignar un valor 
!a la temperatura

!temp = 25.0
print*, 'Ingrese la temperatura'
read(*,*)temp
print*, 'T=',temp

IF(temp < 10.0) then
    print *, "Hace frío"
ELSEIF (10.0<=temp .AND. temp<30.0) then
    print *, "Temperatura templada"
ELSE
    print *, "Hace calor"
ENDIF

IF(temp>10) WRITE(*,*)temp


END PROGRAM ClasificarClima
