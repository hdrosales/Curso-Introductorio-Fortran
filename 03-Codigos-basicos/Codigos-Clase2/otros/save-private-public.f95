program saveprivatepublic
implicit none
integer ::a,b,c

DO a=1,10
    CALL sub1()
ENDDO


endprogram saveprivatepublic

subroutine sub1()
    logical,save :: first_time=.true.    ! save attribute
    integer :: saveval
    save :: saveval                      ! save statement
    if(first_time) then                  ! do initializations
    first_time=.false.
    saveval=1
    end if
    saveval=saveval+1                    ! value is preserved
    write(*,*)saveval
end subroutine

