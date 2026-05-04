#import "@preview/intextual:0.1.1": *
#set page(numbering: "1", number-align: top + right)
#set page(
  background: image("white-paper-texture.jpg", width: 100%, height: 100%),
)
#align(left)[
  #text(weight: "bold")[Imran Qasimi] \
  Math 31 — Differential Equations \
  Section 7.3.1 \
  #line(length: 100%, stroke: 0.5pt)  // adds a clean divider
]

== 3. $cal(L){t^3e^(-2t)}$
#set par(justify: true)
#set align(center)
Shift $s$ by $(s-(-2))$: \
$cal(L){t^3e^(-2t)} = frac(6, (s+2)^4)$
#set align(left)
== 7. $cal(L){e^(t)sin(3t)}$
#set align(center)
Shift by $(s-1)$: \
$cal(L){e^(t)sin(3t)} = frac(3, (s-1)^2 + 9)$ \
#set align(left)
== 9. $cal(L){(1-e^(t)+3e^(-4t))cos(5t)}  $
#set align(center)
Distributing the $cos(5t)$ into each term: \
$cal(L){cos(5t) - e^(t)cos(5t) + 3e^(-4t)cos(5t)}$ \
Which gives us: \
$cal(L){cos(5t) - e^(t)cos(5t) + 3e^(-4t)cos(5t)}$ \
Taking the Laplace: \
$frac(s, s^2 + 25) - frac((s-1), (s-1)^2 + 25) + frac(3(s+4), (s+4)^2 + 25)$
#set align(left)
== 11. $cal(L)^(-1){frac(1, (s+3)^3)}$
#set align(center)
The $s$ term here is shifted by $3$ and has a multiplicity of $3$: \
Getting the inverse into form: \
$1/2!cal(L)^(-1){frac(2!, (s+3)^(2+1))}$ \
Which gives us our final answer of: \
*$[frac(t^(2)e^(-3t), 2)]$*
#set align(left)
== 13. $cal(L)^(-1){frac(1, s^2-6s+10)}$
#set align(center)
Check if the denominator is reducible: \
$D = sqrt((-6)^2 - (4 dot 10 dot 1)) #tag[(arrow)]$
#sym.arrow
$D = sqrt(-4)$ \
$ therefore$ Irreducible: \
Utilize completing the square: \
$cal(L)^(-1){frac(1, s^2-6s + 9-9+10)} #tag[(arrow)]$
#sym.arrow
$cal(L)^(-1){frac(1, (s-3)^2 + 1)} #tag[(arrow)]$ \
Which gives us our final answer of: \
*$[e^(3t)sin(t)]$* \
#set align(left)
== 15. $cal(L)^(-1){frac(s, s^2 + 4s + 5)}$
#set align(center)
First complete the square on the bottom and get it into form: \
$frac((s+2)-2, (s+2)^2 + 1) $ \
Split the fraction: \
$frac((s+2), (s+2)^2 + 1) - frac(2, (s+2)^2 + 1) $ \
Take inverse which gives us our final answer: \
*$[e^(-2t)cos(t)-2e^(-2t)sin(t)]$*
#set align(left)
== 16. $cal(L)^(-1){frac(2s+5, s^2 + 6s + 34)}$
#set align(center)
Complete the square on the denominator: \
$cal(L)^(-1){frac(2s+5, (s+3)^2 + 25)}$ \
Separate the fraction: \
$cal(L)^(-1){frac(2s, (s+3)^2 + 25) + frac(5, (s+3)^2 + 25)}$ \
Which results in: \
*$[2e^(-3t)cos(5t) + 5e^(-3t)sin(5t)]$*
#set align(left)
== 17. $cal(L)^(-1){frac(s, (s+1)^2)}$
#set align(center)
Setup the PFD: \
$frac(s, (s+1)^2) = frac(A, (s+1)) + frac(B, (s+1)^2)$ \
Multiplying both sides by $(s+1)^2$ results in: \
$s = A s + A + B$ \
And by comparing coefficents we get that: \
$ A = 1 \ A + B = -1 \ therefore \ A = 1 \ B = -1$\
Our PFD then becomes: \
$frac(1, (s+1)) - frac(1, (s+1)^2)$ \
And thus the inverse Laplace is: \
*$[e^(-t) - t e^(-t)]$*
#set align(left)
== 18. $cal(L)^(-1){frac(5s,(s-2)^(2))}$
#set align(center)
Start PFD: \
$ frac(5s, (s-2)^2) = frac(A, (s-2)) + frac(B, (s-2)^2)$ \
Multiply both sides by $(s-2)^2$ \
$ 5s = A s - 2A + B$ \
Comparing coefficents: \
$ A = 5 \ -2A + B = 0 \ therefore \ A = 5 \ B = 10$\
Resulting in: \
$ frac(5, (s-2)) + frac(10, (s-2)^2)$ \
And after taking our inverse Laplace our final answer is: \
*$[5e^(2t)+10t e(2t)]$*
#set align(left)
== 19. $cal(L)^(-1){frac(2s - 1, s^2(s+1)^3)}$
#set align(center)
PFD: \
$frac(2s - 1, s^2(s+1)^3) = frac(A, s) + frac(B, s^2) + frac(C, s+1) + frac(D, (s+1)^2) + frac(E, (s+1)^3)$ \
Multiplying both sides by $s^2(s+1)^3$\
$2s-1=A s^4 + 3A s^3 + 3A s^2 + A s + B s^3 + 3B s^2 + 3B s + B + C s^4 + 2C s^3 + C s^2 + D s^3 + D s^2 + E s^2$ \
Setting up our augmented matrix: \
$mat(1,0,1,0,0,0;3,1,2,1,0,0;3,3,1,1,1,0;1,3,0,0,0,2;0,1,0,0,0,-1; augment: #5)#tag[(arrow)]$
#sym.arrow
RREF:
$mat(1,0,0,0,0,5;0,1,0,0,0,-1;0,0,1,0,0,-5;0,0,0,1,0,-4;0,0,0,0,1,-3; augment: #5)$ \
Which give us our decomposed fraction: \
$frac(5,s) - frac(1, s^2) - frac(5, s+1) - frac(4, (s+1)^2) - frac(3, (s+1)^3)$ \
Taking the inverse Laplace gives us the final answer of: \
*$[5 - t - 5e^(-t) - 4t e^(-t) - frac(3,2)t^2 e^(-t)]$*
#set align(left)
== 27. $y'' + 2y' + y = 0 | y(0) = 1, y'(0) = 1$
#set align(center)
Take the Laplace of both sides: \
$s^2 Y(s) - s y(0) - y'(0) + 2s Y(s) - 2y(0) + Y(s) = 0$ \
Substitute the initial conditions: \
$s^2 Y(s) - s - 1 + 2s Y(s) - 2 + Y(s) = 0$ \
Isolating for $Y(s)$\
$Y(s)(s^2 + 2s +1) = s +3$ \
Divide by $(s^2 + 2s + 1)$ \
$Y(s) = frac(s+3, (s+1)^2)$ \
Decomposing our fraction: \
$frac(s+3, (s+1)^2) = frac(A, (s+1)) + frac(B, (s+1)^2)$ \
Multiplying by $(s+1)^2$ gives us: \
$s+3 = A s + A + B$\
Comparing coefficents: \
$ A = 1 \ A + B = 3 \ therefore \ A = 1 \ B = 2$\
Resulting fraction: \
$Y(s)=frac(1, s+1) + frac(2, (s+1)^2)$ \
Taking the inverse Laplace gives us our solution: \
*$[y = e^(-t) + 2t e^(-t)]$*
#set align(left)
== 29. $y'' - 6y' + 9y = t | y(0) = 0, y'(0) = 1$
#set align(center)
Take the Laplace of both sides: \
$s^2 Y(s) - s y(0) - y'(0) - 6s Y(s) + 6y(0) + 9Y(s) = frac(1,s^2)$ \
Substitute in our initial conditions: \
$s^2 Y(s) - 1 - 6s Y(s) + 9Y(s) = frac(1,s^2)$ \
Add over the $1$ and isolate for $Y(s)$ \
$Y(s)(s^2-6s+9)=frac(1+s^2, s^2)$ \
Isolating for $Y(s)$ \
$Y(s) = frac(1+s^2, s^2(s-3)^2)$ \ 
Decomposing our fraction: \
$frac(1+s^2, s^2(s-3)^2) = frac(A, s) + frac(B, s^2) + frac(C, (s-3)) + frac(D, (s-3)^2)$ \
Multiplying both sides by $s^2(s-3)^3$ \
$1 + s^2 = A s^3 - 6A s^2 + 9A s + B s^2 - 6B s + 9B + C s^3 - 3C s^2 + D s^2$ \
Setting up our matrix: \
$mat(1,0,-3,0,0;-6,1,-3,1,1;9,-6,0,0,0;0,9,0,0,1;augment: #4)#tag[(arrow)]$
#sym.arrow
RREF: 
$mat(1,0,0,0,frac(2, 27);0,1,0,0,frac(1,9);0,0,1,0,-frac(2,27);0,0,0,1,frac(10,9);augment: #4)$ \
Which gives us our decomposed fraction of: \
$Y(s) = frac(2, 27s) + frac(1, 9s^2) - frac(2, 27(s-3)) + frac(10, (s-3)^2)$ \
$cal(L)^(-1)$ gives us our solution: \
*$[y = frac(2,27) + frac(t, 9) - frac(2,27)e^(3t) + 10t e^(-3t)]$*
#set align(left)
== 32. $2y'' + 20y' + 51y = 0 | y(0) = 2, y'(0) = 0$
#set align(center)
Laplace both sides: \
$2s^2 Y(s) - 2s y(0) - 2y'(0) + 20s Y(s) - 20y(0) + 51Y(s) = 0$ \
Substituing in our initial conditions: \
$2s^2 Y(s) - 4s + 20s Y(s) - 40 + 51 Y(s) = 0$ \
Isolate for $Y(s)$: \
$Y(s) = frac(4s + 40, 2s^2+20s+51)$ \ 
Factor out a $2$ on the denominator and numerator: \
$Y(s) = frac((2)(2s + 20), (2)(s^2+10s+frac(51,2)))$ \ 
Cancel the $2$s which gives us a simplified fraction: \
$frac(2s+20, s^2 + 10s + frac(51,2))$ \
Complete the square: \
$frac(2s+20, s^2 + 10s + 25 - 25 + frac(51,2))#tag[(arrow)]$ 
#sym.arrow
$frac(2s+10+10,(s+5)^2 + frac(1,2))$ \
Split the fraction: \
$frac(2(s+5),(s+5)^2 + frac(1,2)) + frac(10,(s+5)^2 + frac(1,2))$ \
Get into form: \
$frac(2(s+5),(s+5)^2 + sqrt(frac(1,2))^2) + frac(10,(s+5)^2 + sqrt(frac(1,2))^2)$ \
Take $cal(L)^(-1)$ \
$y = 2e^(-5t)cos(frac(t,sqrt(2))) + 10sqrt(2)e^(-5t)sin(frac(t, sqrt(2)))$
#set align(left)
== 34. $y''-2y'+5y=1+t | y(0) = 0, y'(0) = 4$
#set align(center)
Take $cal(L)$: \
$s^2 Y(s) - s y(0)  - y'(0) - 2s Y(s) - 2y(0) + 5Y(s) = frac(s+1, s^2)$ \
Substituting in our values: \
$s^2 Y(s) - 4 - 2s Y(s) + 5Y(s) = frac(s+1, s^2)$ \
Solving for $Y(s)$ \
$Y(s) = frac(4, s^2 - 2s + 5) + frac(s+1, s^2(s^2-2s+5))$ \
Completing the square: \
$Y(s) = frac(4, (s-1)^2 + 4) + frac(s+1, s^2((s-1)^2+4))$ \
We must decompose the right fraction: \
$frac(s+1, s^2((s-1)^2+4)) = frac(A,s) + frac(B, s^2) + frac(C s+ D, (s-1)^2 + 4)$ \
Multiply both sides by $s^2((s-1)^2+4)$: \
$ s + 1 = A s^3 - 2A s^2 + 5A s + B s^2 - 2B s + 5B + C s^3 + D s^2$ \
Coefficient matrix: \
$ mat(1, 0, 1, 0, 0; -2, 1, 0, 1, 0; 5, -2, 0, 0,1;0,5,0,0,1;augment: #4)#tag[(arrow)]$
#sym.arrow
RREF: 
$mat(1, 0, 0, 0, frac(7,25); 0, 1, 0, 0, frac(1,5); 0, 0, 1, 0,-frac(7,25);0,0,0,1,frac(9,25);augment: #4)$ \
Backsubstituting: \
$frac(s+1, s^2((s-1)^2+4)) = frac(7,25s) + frac(1, 5s^2) + frac(-7s+ 9, 25((s-1)^2 + 4))$ \
Going back to our equation we get: \
$frac(4, (s-1)^2 + 4) + frac(7,25s) + frac(1, 5s^2) + frac(-7s+ 9, 25((s-1)^2 + 4))$ \
Getting the equation into form for inverse Laplace: \
$frac(4, (s-1)^2 + 4) + frac(7,25s) + frac(1, 5s^2) + frac(-7,25)(frac(s-63, (s-1)^2 + 4))$ \
Simplifying further: \
$frac(4, (s-1)^2 + 4) + frac(7,25s) + frac(1, 5s^2) + frac(-7,25)(frac((s-1), (s-1)^2 + 4) - frac(62, (s-1)^2 + 4))$ \
Taking $cal(L)^(-1)$: \
*$[y = 2e^(t)sin(2t) + frac(7,25) + frac(1,5)t - frac(7,25)(e^(t)cos(2t) - 31e^(t)sin(2t))]$*

