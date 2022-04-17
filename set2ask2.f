      program num_dif
      implicit none
      integer i
      real*8 x(1,5),fx(1,5),df(1,5),dfmethod(1,5),h,e(1,5)
      real*8 sim_sim,sim_mul

      data x/1.8,1.9,2.0,2.1,2.2/
      data fx/10.889365,12.703199,14.778112,17.148957,19.855030/

c  ypologismos twn timwn tis f' me vasi ton typo ths paragwgou    
      do i=1,5
         df(1,i)=exp(x(1,i))+x(1,i)*exp(x(1,i))
         print*, "df=",df(1,i)
      end do

      print*, " "

c ypologismos twn timwn ths paragwgoy me xrhsh tou symptwtikou polywnymou
c pros ta empros diaforew gia tie 3 prwtes times kai pros ta pisw
c gia tis alles 2 
      h=0.1
      do i=1,5
         if (i<4) then
            dfmethod(1,i)=-(3*fx(1,i)-4*fx(1,i+1)+fx(1,i+2))/(2*h)
         else
            dfmethod(1,i)=(3*fx(1,i)-4*fx(1,i-1)+fx(1,i-2))/(2*h)
         end if
         print*,"dfmethod=",dfmethod(1,i)
      end do

      print*," "
      
c ypologismos tou sfalmatos ths methodou      
      do i=1,5
         e(1,i)=(df(1,i)-dfmethod(1,i))*100/df(1,i)
         print*,"e=",e(1,i),"%"
      end do

      print*," "
      
c ypologismos tou oloklhrwmatos me Simpson's h/3-simple form      
      sim_sim=(x(1,5)-x(1,1))*(fx(1,1)+4*fx(1,3)+fx(1,5))/6
      print*,"sim_simple=",sim_sim
      sim_mul=(x(1,5)-x(1,1))*(fx(1,1)+4*fx(1,2)+2*fx(1,3)+4*fx(1,4)+
     &     fx(1,5))/12
      print*,"sim_multiple=",sim_mul
      end program num_dif
