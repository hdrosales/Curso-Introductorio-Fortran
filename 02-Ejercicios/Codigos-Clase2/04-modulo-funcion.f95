module globales
 real,parameter,private:: pi=3.141592,grados=pi/180.0
 real,dimension(2):: x
 contains
    subroutine f(r,a)
        implicit none
        real,intent(in):: r,a
        x(1)=r*cos(a*grados)
        x(2)=r*sin(a*grados)
    endsubroutine f
endmodule globales

program test
  use globales
  implicit none
  real:: pi

  pi=5.0
  x=4.0
  write (*,*) x,pi
  call f(2.0,45.0)
  write (*,*) x
endprogram test
