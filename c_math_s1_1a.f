      program bolzano
      implicit none
      real x1,x2,x3,f,es,ea
      
      x1=0.
c      x2=2.
      x2=1.
      x3=(x1+x2)/2.
      es=0.5*10**(2-5)
      ea=100

      do while (ea.ge.es.and.(f(x3).ne.0.0))
         print*,"x1=",x1,"x2=",x2,"oi epimerous rizes einai x3=",x3
         print*,"f(x1)*f(x3)=",f(x1)*f(x3),"f(x3)*f(x2)=",f(x3)*f(x2)
         if (f(x1)*f(x3)<0) then
            x2=x3
         else
            x1=x3
         endif
         ea=abs((x2-x1)/(x2+x1))*100
         x3=(x1+x2)/2
      end do

      print*,"i riza ths exiswsis einai i x3=",x3
      end program bolzano

      function f(x)
      implicit none
      real f,x
c      f=exp(x)-2*x*cos(x)-3.0
      f=x*x+sin(x)+exp(x)-2.0
      return
      end function f
