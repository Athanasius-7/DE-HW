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
$cal(L){t^3e^(-2t)} = frac(6, (s+2)^3)$
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
$frac(s, s^2 + 25) - frac((s-1), (s-1)^2 + 25) + frac(3s, (s+4)^2 + 25)$
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
First complete the square on the bottom: \
$frac(s, (s+2)^2 + 1) $ \
Take inverse which gives us our final answer: \
*$[e^(-2t)cos(t)]$*
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
