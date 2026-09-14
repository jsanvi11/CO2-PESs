program testpes
use callpot1  ! For 1AP    PES 
!use callpot2 ! For 3AP    PES 
!use callpot3 ! For 3APP   PES
!use callpot4 ! For 1APP   PES
!use callpot5 ! For (2)1AP PES

implicit none
real*8 :: roo, roc, rco, v
real*8, dimension(:) :: dvdr(3), r(3)

!      3
!      C
!     / \
!  r3/   \r2
!   /     \
!  /       \
! O---------O
! 1   r1    2

roo=2.4d0 !in bohr
roc=2.3d0 !in bohr
rco=4.5d0 !in bohr

r(1)=roo
r(2)=roc
r(3)=rco

call co21appes(r, v, dvdr)   ! For 1AP    PES
!call  co23appes(r, v, dvdr) ! For 3AP    PES
!call  co23apppes(r, v, dvdr)! For 3APP   PES 
!call  co21apppes(r, v, dvdr)! For 1APP   PES 
!call  co221appes(r, v, dvdr)! For (2)1AP PES

write(*,*)"Energy = ", v, "Hartree"
write(*,*)"dV/dr_i (Hartree/bohr) = ", dvdr

end
