program planeta_alrededor_sol
  implicit none
  real, parameter :: G = 6.67430e-11   ! Constante de gravitación universal en m^3/(kg*s^2)
  real, parameter :: M_sun = 1.989e30  ! Masa del Sol en kg
  real, parameter :: dt = 86400.0      ! Paso de tiempo en segundos (1 día)
  real, parameter :: r0 = 1.496e11     ! 1 UA
  real, parameter :: v0 = 29780        ! velocidad promerio de la Tierra alrededor del sol 
  integer, parameter :: nsteps = 365   ! Número de pasos (simulación de 1 año)
  real :: r(2), v(2), a(2)             ! Posición, velocidad y aceleración del planeta
  real :: r_mag                        ! Magnitud de la posición (distancia al Sol)
  integer :: i

  ! Condiciones iniciales
  r = r0*(/1.0,0.0/) ! Posicion inicial 
  v = v0*(/-0.8,1.0/) ! Velocidad inicial

  call system("mkdir datos")
  call system("mkdir plot")

  OPEN(10,FILE='datos/RyVvstiempo.dat',STATUS='replace')
  ! Bucle principal de la simulación
  do i = 1, nsteps*10
    ! Calcular la magnitud de la distancia al Sol
    r_mag = sqrt(r(1)**2 + r(2)**2)

    ! Calcular la aceleración debida a la gravedad (Fuerza gravitacional)
    a(1) = -G * M_sun * r(1) / r_mag**3
    a(2) = -G * M_sun * r(2) / r_mag**3

    ! Actualizar la velocidad usando la aceleración
    v(1) = v(1) + a(1) * dt
    v(2) = v(2) + a(2) * dt

    ! Actualizar la posición usando la velocidad
    r(1) = r(1) + v(1) * dt
    r(2) = r(2) + v(2) * dt

    ! Imprimir la posición del planeta (puede graficarse posteriormente)
    WRITE(*,'(A,I4,A,2f10.5,A,2f10.5)') "Día:", i, "  Posición (x, y):", r/r0,"   Velocidad (x, y):",v/v0
    WRITE(10,'(I4,6f10.5)')I,r/r0,v/v0
  end do
  CLOSE(10)
  call crea_gnuplot_file()
  call system("gnuplot gnuplo_template.gp")


end program planeta_alrededor_sol

subroutine crea_gnuplot_file()
  implicit none

  OPEN(20,FILE='gnuplo_template.gp',STATUS='replace')

  WRITE(20,'(A)')'set terminal pngcairo  dashed dashlength 0.3 size 900,900 enhanced font "Helvetica,20"'
  WRITE(20,'(A)')'set ylabel "y"'
  WRITE(20,'(A)')'set xlabel "x"'
  WRITE(20,'(A)')'set key width 0.7 height 0.45'
  WRITE(20,'(A)')'set key left top'
  WRITE(20,'(A)')'set xrange[-5:5]'
  WRITE(20,'(A)')'set yrange[-5:5]'
  WRITE(20,'(A)')'set output "ejemplo.png"'
  WRITE(20,'(A)')'plot "datos/RyVvstiempo.dat" u 2:3  w lp'
  CLOSE(20)
end subroutine

