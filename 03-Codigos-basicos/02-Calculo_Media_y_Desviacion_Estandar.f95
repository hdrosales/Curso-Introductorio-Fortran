program mean_stddev
  implicit none
  integer, parameter :: n = 100
  real :: data(100), mean, stddev, suma
  integer :: i

  ! Suponer que los datos son leídos desde un archivo
  ! Aquí inicializados la lista de números data(n) manualmente

  data = (/ (real(i), i = 1, n) /) ! asignación implícita

  ! Calcular la media
  suma = 0.0
  do i = 1, n
    suma = suma + data(i)
  end do
  mean = suma / n
  write(*,'(A,f10.5)')'media con loop do: ',mean
  ! tambien se podría hacer con la funcion SUM()
  mean=SUM(data)/real(n)
  write(*,'(A,f10.5)')'media con función SUM(): ',mean
  
  ! Calcular la desviación estándar
  suma = 0.0
  do i = 1, n
    suma = suma + (data(i) - mean)**2
  end do
  stddev = sqrt(suma / (n - 1))

  ! Imprimir resultados
  print *, "Media = ", mean
  print *, "Desviación estándar = ", stddev
end program mean_stddev
