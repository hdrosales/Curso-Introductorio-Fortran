program punteros
REAL,TARGET :: B,C
REAL, POINTER :: pB

pB => B ! pB apunta a B. C no tiene nada
B = 10.0
WRITE(*,*)pB,B,C
pB => C ! ahora pB apunta a C.Pero como C no tiene nada, pB no va a tener nada.
B=-200.0 ! opr mas que modifiue el valor de B, pB ya no apunta a B
WRITE(*,*)pB,B,C
C=2400.0 ! como pB apunta a C, ahora pB si muestra un valor
WRITE(*,*)pB,B,C

end program punteros
