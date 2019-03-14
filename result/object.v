Definition c1 := 
  BClass 0 "Vehicle" false. 
Definition c2 := 
  BClass 1 "Car" false. 
Definition c3 := 
  BClass 2 "Motorcycle" false. 
Definition c4 := 
  BClass 3 "Company" false. 
Definition c5 := 
  BClass 4 "RentalStation" false. 
Definition c6 := 
  BClass 5 "Person" false. 
Definition c7 := 
  BClass 6 "Date" false. 

Definition a1 := 
  BAttribute 7 "registration" cstring c1.
Definition a2 := 
  BAttribute 8 "numWheels" cint c1.
Definition a3 := 
  BAttribute 9 "category" cint c2.
Definition a4 := 
  BAttribute 10 "numSaddles" cint c3.
Definition a5 := 
  BAttribute 11 "cc" cint c3.
Definition a6 := 
  BAttribute 12 "name" cstring c4.
Definition a7 := 
  BAttribute 13 "numEmployees" cint c4.
Definition a8 := 
  BAttribute 14 "location" cstring c5.
Definition a9 := 
  BAttribute 15 "firstname" cstring c6.
Definition a10 := 
  BAttribute 16 "lastname" cstring c6.
Definition a11 := 
  BAttribute 17 "age" cint c6.
Definition a12 := 
  BAttribute 18 "isMarried" cboolean c6.

Definition p1 := 
  BParameter 19 "d" c7.

Definition o1 := 
  BOperation 20 "stockPrice" [] c4.
Definition o2 := 
  BOperation 21 "income" [p1] c6.

Definition s1 := 
  BAssoc 22 c5 c6 none.
Definition s2 := 
  BAssoc 23 c1 c4 none.
Definition s3 := 
  BAssoc 24 c4 c5 none.
Definition s4 := 
  BAssoc 25 c5 c6 none.

Definition r1 := 
  BRole 26 "employee" "employer" s1.
Definition r2 := 
  BRole 27 "vehicle" "company" s2.
Definition r3 := 
  BRole 28 "company" "rentalstation" s3.
Definition r4 := 
  BRole 29 "manager" "managedStation" s4.

Definition m1 := 
  BMulti 30 c1 (Nat 0) (Nat 1) s2.
Definition m2 := 
  BMulti 31 c4 (Nat 0) Star s2.
Definition m3 := 
  BMulti 32 c4 (Nat 1) Star s3.
Definition m4 := 
  BMulti 33 c5 (Nat 0) Star s1.
Definition m5 := 
  BMulti 34 c5 (Nat 1) (Nat 1) s3.
Definition m6 := 
  BMulti 35 c5 (Nat 1) (Nat 1) s4.
Definition m7 := 
  BMulti 36 c6 (Nat 0) (Nat 1) s1.
Definition m8 := 
  BMulti 37 c6 (Nat 0) (Nat 1) s4.

Definition g1 := 
  BGen 38 c1 c2.
Definition g2 := 
  BGen 39 c1 c3.

