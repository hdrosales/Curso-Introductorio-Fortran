!-----  1. Multiplicación de Matrices con Verificación
! Descripción: Lee dos matrices desde archivos de texto, multiplícalas y verifica si
! todos los elementos de la matriz resultante son positivos. Si no lo son, identifica 
! y reporta las posiciones de los elementos negativos.
! Objetivo: Practicar lectura de archivos, operaciones con matrices y control de flujo.
  
  
  ! Vamos a usar la funcion reshape( #1 , #2 ). En #1 ingresamos un array 1Dimensional
  ! en #2 le pasamos que tipo de shape   queremos a lña salida. 
  ! En este caso #1 es un Array 1d  y a la salida A debe ser un array n*m, que es como está definido 
  ! Al final del código, hago un ejemplo inverso. HAgo reshape() para guardar los elementos de A(n,m) en un Array "V(n*m)"


program matrix_multiplication
  implicit none
  integer, parameter :: n = 3, m = 3, p = 3
  real :: A(n, m), B(m, p), C(n, p)
  real :: V(n*m)


  integer :: i, j, k

  ! Leer matrices desde archivos (por simplicidad, matrices definidas aquí)
  A = reshape((/ 1.0, 2.0, 3.0,4.0, 5.0, 6.0,7.0, 8.0, 9.0 /), shape(A))
  B = reshape((/ 9.0, 8.0, 7.0,6.0, 5.0, 4.0,3.0, 2.0, 1.0 /), shape(B))
  ! Inicializar matriz C
  C = 0.0
  ! Multiplicación de matrices
  do i = 1, n
    do j = 1, p
      do k = 1, m
        C(i, j) = C(i, j) + A(i, k) * B(k, j)
      end do
    end do
  end do

  ! Verificar si todos los elementos son positivos
  do i = 1, n
    do j = 1, p
      if (C(i, j) <= 0.0) then
        print *, "Elemento negativo en posición: ", i, j
      end if
    end do
  end do

  ! Imprimir matriz resultante
  print *, "Matriz resultante C:"
  do i = 1, n
    print *, C(i, :)
  end do

  ! Reshape A en el vector  V
  V=reshape(A,shape(V))
  write(*,'(A,10f10.5)')'V=',V

end program matrix_multiplication
