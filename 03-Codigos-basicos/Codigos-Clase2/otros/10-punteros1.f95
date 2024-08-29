program punteros
REAL,TARGET :: B
REAL, POINTER :: pB

pB => B

B = 10.0
WRITE(*,*)B
pB = 32.0
WRITE(*,*)B,pB
end program punteros
