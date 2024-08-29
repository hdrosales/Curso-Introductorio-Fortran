PROGRAM ejemplo

  TYPE vehiculo ! Definición del tipo derivado
    CHARACTER(100) :: nombre,color
    REAL :: masa,potencia
  END TYPE vehiculo

  TYPE(vehiculo) :: auto  ! Declaración de una variable
  
  ! Asignación de un valor a las componentes
  auto%nombre ='Ford T'
  auto%masa =1000.0
  auto%potencia =300.0
  auto%color ='Verde'
  ! Impresión del valor de las componentes
  WRITE(*,*) 'Tengo un : '//trim(auto%nombre)//', &
        de masa: ',auto%masa,', potencia: ',auto%potencia,&
        ' de color '//trim(auto%color)
END PROGRAM ejemplo