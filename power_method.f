      program power_method
      implicit none
      integer a(4,4),x(4,1),temp1(4,4),temp2(4,4),i,j,k,v(4,1),N
c      real*8 , u(4,1)

      data a/4,1,2,1,1,7,1,0,2,1,4,-1,1,0,-1,3/
      data x/1,1,1,1/
      data v/0,0,0,0/

      do i=1,4
         do j=1,4
            temp1(i,j)=0
            temp2(i,j)=0
         end do
         print*,(a(i,j),j=1,4)
      end do

      print*," "
         
      do i=1,4
         do j=1,4
            do k=1,4  !vriskw ton a*a
               temp1(i,j)= temp1(i,j)+a(i,k)*a(k,j)
            end do
         end do
         print*,(temp1(i,j),j=1,4)
      end do

      print*," "

       do i=1,4
         do j=1,4
            
            do k=1,4  !vriskw ton a*a*a
               temp2(i,j)= temp2(i,j)+temp1(i,k)*a(k,j)
            end do
         end do
         print*,(temp2(i,j),j=1,4)
      end do
      
      print*, " "

      
      do i=1,4
         do j=1,4
            v(i,1)=v(i,1)+temp1(i,j)*x(j,1)
         end do
         print*,v(i,1)
      end do
      print*, " "

      end program power_method
