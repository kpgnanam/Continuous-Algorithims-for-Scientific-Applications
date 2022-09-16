
%Kundhavi P. Gnanam
%1/17/18
%ISC4220

function [xst, erra, iter] = bisection(func, a, b, tol);
erra = 1000;
i=1;
mp = 0; % this value is the midpoint between a and b
xst = 0 % this is the answer 
    while (tol < erra)
        mp = (a+b)/2;
        tempA = g(a);
        tempX = g(mp);
        
        aTimesMp = tempA * tempX;
        
        if(aTimesMp < 0)
            b = mp;
        end
        if(aTimesMp == 0)
            xst = mp;
        end
        if(aTimesMp > 0)
            a = mp;
        end
        
        xst= mp;
        erra = abs(b-a);
        i= i +1
        end
    iter = i;
    erra


end