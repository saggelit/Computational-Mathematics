      program simpsonsmethod
      implicit none
      integer n1,n2
      real i1,i2,int

      n1=2
      call simpson(n1,int)
      i1=int
      print*, "i1=",i1
      n2=8
      call simpson(n2,int)
      i2=int
      print*,"i2=",i2
      
      end program simpsonsmethod

      subroutine simpson(n,int)
      implicit none
      integer n,i
      real x,f,x0,xn,h,sum,int

      f(x)=x*exp(2*x)
      x0=0.
      xn=3.
      h=(xn-x0)/n
      sum=f(x0)+f(xn)
      do i=1,n-1,2
         sum=sum+4*f(x0+i*h)
      end do
      do i=2,n-2,2
         sum=sum+2*f(x0+i*h)
      end do
      int=sum*h/3
      
      end subroutine simpson
