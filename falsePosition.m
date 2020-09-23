
     function root = falsePos()
     a = input('enter the function :' , 's');
     f = inline(a)
     x0 = input('enter the value of x0 = ');
     x1 = input('enter the value of x1 = ');
     tolerance=input('inter the tolerance =  ');
     
        for i=0:inf
            x2= x1 - (f(x1)* (x1-x0)/(f(x1)-f(x0))) 
            c = f(x2)
            absolute_c= abs(c);
            if  absolute_c < tolerance
                 break 
            end
            if f(x0)*c <0
                          x1=x2;
                  continue
            else
                x0=x2;
                continue
            end
        end
        i
     end