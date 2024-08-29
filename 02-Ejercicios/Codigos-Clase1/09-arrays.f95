program arreglos
implicit none
! Declarar vectores.
real, dimension(3) :: v1,v2
!Declarar matrices.
real, dimension (2,2) :: a,b,c

! Dar componentes de v1.
    v1(1) = 1.0
    v1(2) = 2.0
    v1(3) = 3.0
! Dar v2 de golpe.
    v2 = 4.0
! Dar componentes de b.
    b(1,1)=1.0
    b(1,2)=2.0
    b(2,1)=3.0
    b(2,2)=4.0
! Dar la matriz c de golpe.
    c = 2.0
! Definir a como la division de b entre c.
    a = b/c
! Imprimir v1 completo.
    print *, 'Vector v1:'
    print *, v1
    print *
! Imprimir v2 componente a componente.
    print *, 'Vector v2:'
    print *, v2(1),v2(2),v2(3)
    print *
! Imprimir componente c(1,1).
    print *, 'Componente c(1,1):'
    print *, c(1,1)
    print *
! Imprimir componente b(1,1).
    print *, 'Componente b(1,1):'
    print *, b(1,1)
    print *
! Imprimir a completo.
    print *, 'Matriz a completa:'
    print *, a
    print *

end program arreglos
