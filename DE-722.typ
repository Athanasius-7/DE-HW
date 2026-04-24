#import "@preview/intextual:0.1.1": *
#set page(numbering: "1", number-align: top + right)
#set page(
  background: image("white-paper-texture.jpg", width: 100%, height: 100%)
)
*
Imran Qasimi \
Math 31 -  Differential Equations \
Section 7.2.2 
*
== 38. $y' - y = 2cos(5t) | y(0) = 0$
\
#set par(justify: true)
#set align(center)
First, let us take the Laplace Transform of each side: \
$ cal(L){y'-y} = cal(L){2cos(5t)} #tag[(arrow)]$ 
#sym.arrow
$ s Y(s) - y(0) - Y(s) = frac(2s, s^2+25) #tag[(arrow)]$
\
Factoring and adding over $y(0)$ we get: \
$Y(s)(s-1)=frac(2s, s^2+25) + 0$ \
Dividing by $(s-1)$ results in: \
$Y(s)=frac(2s, (s-1)(s^2+25))$ \
Here we must take the inverse Laplace and thus need to make use of PFD. $(s-1)$ is a reducible linear term, however $(s^2+25)$ does not have any real zeroes therefore we must make use of a linear term in our PFD. \
$ frac(2s, (s-1)(s^2+25))= frac(A s+B, (s^2+25)) + frac(C, s-1)$ \
Simplifying further: \
$ frac(2s, (s-1)(s^2+25))= frac(A s^2 - A s + B s - B + C s^2 + 25C, (s-1)(s^2+25))$ \
Comparing coefficients we get: \
$ A + C = 0 \ -A + B = 2 \ -B + 25C = 0 $
Setting up our augment matrix: 
$mat(1, 0, 1, 0; -1, 1, 0, 2; 0, -1, 25, 0)#tag[(arrow)]$
#sym.arrow
RREF:
$mat(1, 0, 0, -frac(1,13); 0, 1, 0, frac(25,13); 0, 0, 1, frac(1,13))$ \
Giving us: \
$ A = -frac(1,13) , B = frac(25,13) , C = frac(1,13)$ \
Rewriting our original fraction in its decomposed form gives us: \
$frac(-frac(1, 13)s + frac(25,13), (s^2+25)) + frac(frac(1,13), (s-1))$ \
Simplyfing further we get:\
$Y(s)=frac(25-s,13(s^2+25)) + frac(1, 13(s-1))$ \
To get the solution for our DE, we will now take the inverse Laplace: \
$y=cal(L)^(-1){frac(-s+25, 13(s^2+25))} + cal(L)^(-1){frac(1, 13(s-1))}$ \ 
Splitting the transformation results in: \
$y=-frac(1,13)cal(L)^(-1){frac(s,s^2+25)} + frac(25,13)cal(L)^(-1){frac(1,s^2+25)} + frac(1,13)cal(L)^(-1){frac(1,(s-1))}$ \ 
Getting the inverse Laplace transform into form: \
$y=-frac(1,13)cal(L)^(-1){frac(s,s^2+25)} + frac(5,13)cal(L)^(-1){frac(5,s^2+25)} + frac(1,13)cal(L)^(-1){frac(1,(s-1))}$ \ 
Finally: \
*$[y=frac(1,13)e^(t)+frac(5,13)sin(5t)-frac(1,13)cos(5t)]$*
#set align(left)
== 39. $y'' + 5y' + 4y = 0 |  y(0) = 1, y'(0) = 0$
#set align(center)
Taking the Laplace of both sides gives us:\
$s^2 Y(s) -s y(0) - y'(0) + 5(s Y(s) - y(0)) + 4Y(s) = 0$\
Simplifying further: \ 
$s^2 Y(s) -s+ 5s Y(s) - 5 + 4Y(s) = 0$ \ 
Rearranging and factoring: \
$Y(s)(s^2 +5s + 4) = 5+s$ \ 
Isolating $Y(s)$:\
$Y(s)=frac(5+s,(s+1)(s+4))$\
Completing PFD:\
$frac(5+s, (s+1)(s+4)) = frac(A, (s+1)) + frac(B, (s+4))$ \
Getting a common denominator: \
$frac(5+s, (s+1)(s+4)) = frac(A s + 4A + B s + B, (s+1)(s+4))$ \
Comparing coefficients: \
$A + B = 1 \ 4A + B = 5$ \
Matrix of system is:
$mat(1,1,1;-4,-1,5)#tag([arrow])$
#sym.arrow RREF
$mat(1, 0, frac(4,3);0,1, -frac(1,3))$\
Which gives us:\
$A = -frac(4,3), B = -frac(1,3)$ \
Thus our PFD result is: \
$frac(4, 3(s+4)) -frac(1, 3(s+1))$ \ 
Applying the inverse Laplace to both sides: \
$y = cal(L)^(-1){frac(4,3(s+1))} - cal(L)^(-1){frac(1,3(s+4))}$ \ 
Which gives us our final solution of: \
*[$y = frac(4,3)e^(-t) - frac(1,3)e^(-4t)$]*
#set align(left)
== 40. $y'' - 4y' = 6e^(3t) - 3e^(-t) | y(0) = 1, y'(0) = -1$
#set align(center)
Apply $cal(L){}$ to both sides: \
$s^2 Y(s) - s y(0) - y'(0) - 4s Y(s) - 4y(0) = frac(6, s- 3) - frac(3, s + 1)$ \
Substituting our initial conditions: \
$s^2 Y(s) - s + 1 - 4s Y(s) + 4 = frac(6, s- 3) - frac(3, s + 1)$ \
Isolate $Y(s)$ and add over the $-3$ and $-s$:\ // First get common denom
$Y(s)(s^2-4s)=frac(6, s- 3) - frac(3, s + 1) +s - 5$ \
Combining our first two fractions results in: \
$ frac(6s + 6 - 3s + 9, (s-3)(s+1)) + s - 5 #tag[(arrow)]$ 
#sym.arrow 
$ frac(3s + 15, (s-3)(s+1)) + s - 5$ \
Adding the $s$ and the $-5$: \
$ frac(3s + 15 + s^3 - 7s^2 + 7s + 15, (s-3)(s+1))#tag[(arrow)]$
#sym.arrow 
$ frac(s^3 - 7s^2 + 10s + 30, (s-3)(s+1))$ \
Dividing over the denominator from $Y(s)$: \
$ frac(s^3 - 7s^2 + 10s + 30, s(s-3)(s+1)(s-4))$ \
Setting up the PFD of our fraction: \
$ frac(s^3 - 7s^2 + 10s + 30, s(s-3)(s+1)(s-4)) = frac(A, s) + frac(B, s+1) + frac(C, s-4) + frac(D, s-3)$ \
Adding each fraction: \
$ frac(A s^3 + B s^3 + C s^3 + D s^3 - 6A s^2 -  7B s^2 - -2C s^2 - 3D s^2 + 5A s + 12B s - 3C s - 4D s + 12A, s(s-3)(s+1)(s-4))$ \
The coefficient matrix for our numerator gives us: \
$mat(1,1,1,1,1;-6,-7,-2,-3,-7;5,12,-3,-4,10;12,0,0,0,30)#tag[(arrow)]$
#sym.arrow
RREF: 
$mat(1, 0, 0, 0, frac(5,2); 0, 1, 0, 0, -frac(3,5); 0, 0, 1, 0, frac(11,10); 0, 0, 0, 1, -2)$ \ \
Thus our corresponding coefficients are: \
$ A = frac(5,2) , B = -frac(3,5) , C = frac(11,10) , D = -2 $
Thus our decomposed fraction results in: \
$ Y(s) = frac(5, 2s) - frac(3, 5(s+1)) + frac(11, 10(s-4)) - frac(2,(s-3))$ \
Taking $cal(L)^(-1)$ of both sides gives us: \
$ y = frac(5,2) - frac(3,5)e^(3t) + frac(11,10)e^(-t) - 2e^(4t) $ \
