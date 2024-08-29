program trazando
implicit none
real :: sumafinal
real , dimension (:,:) , allocatable :: x,y

!-----------------------------------------
interface
  function Ftraza(a)
    real, dimension(3,3) , intent (in):: a
    real :: Ftraza
  endfunction Ftraza
  
  subroutine Straza(a,suma)
    real, dimension(3,3) , intent (in):: a
    real ,intent(out) :: suma
  endsubroutine Straza
endinterface
!-----------------------------------------



allocate (x(100,100))
x= 1.0

CALL Straza(x,sumafinal)

write(*,*)'la suma es= ',sumafinal

sumafinal=Ftraza(x)

write(*,*)'la suma es= ',sumafinal

deallocate (x)
end program trazando
!-----------------------------------------













subroutine Straza(a,suma)
implicit none
integer :: i
real :: aux
real, dimension(3,3) , intent (in):: a
real ,intent(out) :: suma

aux=0.0d0
DO i=1,3
  aux=aux+a(i,i)
ENDDO
suma=aux
end subroutine Straza




function Ftraza(a)
  real :: aux
  real, dimension(3,3) , intent (in):: a
  real :: Ftraza

  aux=0.0d0
  DO i=1,3
    aux=aux+a(i,i)
  ENDDO
  Ftraza=aux
  
end function Ftraza
