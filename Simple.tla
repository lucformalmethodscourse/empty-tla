-------------------------- MODULE Simple  --------------------------

EXTENDS Integers

VARIABLES v

Max == 1000

TypeOK == v \in 0..Max

Init == v = 0

Next == 
  \/  /\ v < Max
      /\ v' = v + 1
  \/  /\ v >= Max
      /\ UNCHANGED <<v>>

Spec == Init /\ [][Next]_v

Safety == v % 2 = 0

====
