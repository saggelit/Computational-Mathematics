      program newton_raphson
      implicit none
      real x0,x1,f,df,es,ea

c      x0=2.  !gia ta apotelesmata tou pdf sthn 1h exiswsi
c      x0=1.
      x0=-0.5
      x1=x0-f(x0)/df(x0)
      print*,"f(x0)=",f(x0),"df(x0)=",df(x0)
      es=0.5*10**(2-5)
      ea=100

      if(f(x0).ne.0.and.df(x0).ne.0) then
         do while (ea.gt.es.and.f(x1).ne.0.0)
            print*,"oi epimerous rizes einai x1=",x1
            x0=x1
            x1=x0-f(x0)/df(x0)
            print*,"f(x0)=",f(x0),"df(x0)=",df(x0)
            ea=abs((x1-x0)/(x1+x0))*100
         end do
      end if

      print*,"i riza ths exiswsis einai i x1=",x1
      end program newton_raphson

      function f(x)
      implicit none
      real f,x
c      f=exp(x)-2.0*x*cos(x)-3.0
c      f=x*x+sin(x)+exp(x)-2
      f=2*exp(x)-3*x*x
      return
      end function f
      
      function df(x)
      implicit none
      real df,x
c      df=exp(x)-2.0*cos(x)+2.0*x*sin(x)
c      df=2.0*x+cos(x)+exp(x)
      df=2*exp(x)-6*x
      return
      end function df
