 program trazando
  implicit none
  real,dimension(3,3):: w, a
  real::res1,res2

 !--------	
  interface
   subroutine traza(a,suma)
    real,dimension(3,3),intent(in):: a
    real,intent(out):: suma
   endsubroutine traza
  endinterface
 !--------	



  w=3.0
  a=1.0

  call traza(w,res1)

  call traza(a,res2)

  write (*,*) res1,res2/2.0

 endprogram trazando

!--------------------------------


 subroutine traza(a,suma)
  implicit none
  real,dimension(3,3),intent(in):: a
  real,intent(out):: suma
  integer:: i

  suma = 0.0
  do i = 1, 3
    suma = suma + a(i,i)
  enddo
 endsubroutine traza
