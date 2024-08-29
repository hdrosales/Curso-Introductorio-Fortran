 program trazando
  implicit none
  real,dimension(3,3):: w, a

  interface
   function traza(a)
    real:: traza
    real,dimension(3,3),&
     intent(in):: a
   endfunction traza
  endinterface

  w=3.0
  a=1.0
  write (*,*) traza(w), traza(a)/2.0

 endprogram trazando

!---------------------------






 function traza(a)
  implicit none
  real:: traza
  real,dimension(3,3),&
   intent(in):: a
  integer:: i
  real:: suma

  suma = 0.0
  do i = 1, 3
    suma = suma + a(i,i)
  enddo
  traza = suma
 endfunction traza
