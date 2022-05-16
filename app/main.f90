
! Port Incunabulum to fortran: https://code.jsoftware.com/wiki/Essays/Incunabulum

! AA TODO: Use fypp instead! https://github.com/aradi/fypp
! AA TODO: add fypp and fpm to guix repositories
#define DOC(n, x) {do concurrent (i=1:n);x; end do;}

program main
  implicit none

  integer, parameter :: a(*) = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  integer :: b(10)
  integer :: i

  print *, "hello from project fj"

  b = a * 2

  do concurrent (i = 1 : size(a))
    print *, a(i)
    !print *, b(i)
  end do

  !cpp macro doesn't seem to work
  DOC(size(a), a(i)= 2 * a(i))
  do concurrent (i = 1 : size(b))
    print *, b(i)
  end do


end program main
