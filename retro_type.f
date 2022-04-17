      program anadromiki_sxesi
      implicit none
      real xr,xrold,ea,es,g

      xr=-0.5
      es=0.5*10**(2-5)
      ea=100

      do while (ea.gt.es)
         print*,"xr=",xr
         xrold=xr
         xr=g(xrold)
         ea=abs((xr-xrold)/(xrold))*100
      end do

      print*,"i riza einai xr=",xr

      end program anadromiki_sxesi

      function g(x)
      implicit none
      real x,g

      g=-sqrt(2.0*exp(x)/3.0)
      return
      end function g
