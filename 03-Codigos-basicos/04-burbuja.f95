!El algoritmo de ordenamiento burbuja (o bubble sort) es uno de los métodos más simples 
!para ordenar un conjunto de elementos en un arreglo o lista. Se llama "burbuja" porque 
!en cada pasada a través del arreglo, los elementos más grandes "suben" gradualmente 
!hacia el final de la lista, como si fueran burbujas.


!Cómo Funciona el Algoritmo de Burbuja:

!==== Comparaciones y Cambios:
!Compara cada par de elementos adyacentes en el arreglo.
!Si el primer elemento es mayor que el segundo, se intercambian (se "burbujea" el elemento más grande hacia el final del arreglo).

!==== Pasadas Repetidas:
!El proceso se repite para todos los elementos del arreglo.
!Después de cada pasada, el siguiente elemento más grande estará en su posición final correcta.
!Cada pasada reduce el número de comparaciones necesarias, ya que el elemento más grande se coloca en su lugar.


program bubble_sort
  implicit none
  integer, parameter :: n = 10
  real :: arr(n)
  integer :: i, j
  real :: temp

  ! Inicializar arreglo (puede ser leído desde un archivo)
  arr = (/ 3.0, 1.4, 5.5, 9.1, 2.2, 6.3, 7.7, 8.6, 4.8, 0.9 /)
  ! Imprimir arreglo original
  write(*,'(A,20f6.3)') "Arreglo original: ", arr

  ! Ordenamiento burbuja
  do i = 1, n-1
    do j = 1, n-i
      if (arr(j) > arr(j+1)) then
        temp = arr(j)
        arr(j) = arr(j+1)
        arr(j+1) = temp
      end if
    end do
  end do

  ! Imprimir arreglo ordenado
  write(*,'(A,20f6.3)') "Arreglo ordenado: ", arr
end program bubble_sort