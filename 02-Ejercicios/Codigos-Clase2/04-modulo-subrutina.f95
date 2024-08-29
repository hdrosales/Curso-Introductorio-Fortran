  module globales
    real,parameter::pi=3.141592,grados=pi/180.0
    real,dimension(2):: x
  endmodule globales





  !------------------------
  program test
    use globales
    implicit none

    interface
      subroutine f(r,a)
        use globales
        real,intent(in):: r,a
      endsubroutine f
    endinterface


    x=4.0
    write (*,*) x,pi,grados
    call f(2.0,45.0)
    write (*,*) x
  endprogram test
  !------------------------
 
 
 
 
  subroutine f(r,a)
    use globales
    implicit none
    real,intent(in):: r,a

    x(1)=r*cos(a*grados)
    x(2)=r*sin(a*grados)
  endsubroutine f
