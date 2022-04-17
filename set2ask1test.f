      program gaussian_elimination
      implicit none
      real*8 :: A(4,5),f,x(1,4),sum,temp1(4,5),temp2(4,5)
      integer :: i,j,k,l
!se periptwsh poy theloyme na dwsoume diaforerikes exiswseis      
c      print*,"dwse tous syntelestes kathe exiswsis"
c      do i=1,4
c         do j=1,5
c            read*, A(i,j)
c         end do
c      end do

      data A/1,2,1,1,-1,-2,1,-1,2,3,1,4,-1,-3,0,3,-8,-20,-2,4/
      do i=1,4
         print*, (A(i,j),j=1,5)
      end do

      print*," "

      do i=1,3
         do j=i+1,4            
            do k=j,4
               if (A(k,i).ne.0)then
                  temp1(k,:)=A(k,:)
                  temp2(i,:)=A(i,:)
                  A(i,:)=temp1(k,:)
                  A(k,:)=temp2(i,:)
               end if
            end do
            f=A(j,i)/A(i,i)
            do l=i,5
               A(j,l)=A(j,l)-f*A(i,l)
            end do 
         end do
      end do
      do i=1,4
         print*,(A(i,j),j=1,5)
      end do


      print*," "

      sum=0
      do i=4,1,-1
         x(1,i)=(A(i,5)-sum)/A(i,i)          
         if (i==1) goto 10
         sum=sum+A(i-1,i)*x(1,i)
10       print*,x(1,i)
      end do
      
      end program gaussian_elimination
