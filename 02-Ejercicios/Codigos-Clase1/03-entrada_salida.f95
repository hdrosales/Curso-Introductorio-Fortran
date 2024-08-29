PROGRAM mengano
  ! Declarar variables.
  implicit none
  character(12) :: nombre
  character :: testA

  ! Preguntar como te llamas.
  print *
  write(*,*) '¿Cómo te llamas?'
  print *
  ! Leer respuesta desde el teclado.
  read(*,*) nombre
  ! Saludar.
  print *
  write(*,*) 'Hola ', nombre,', ¿cómo va el curso? '
  
  write(*,'(3A)') 'Hola ', nombre,', ¿cómo va el curso? '
  write(*,'(3A)') 'Hola ', trim(nombre),', ¿cómo va el curso? '
  print *
END PROGRAM mengano
