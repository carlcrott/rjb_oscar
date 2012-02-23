# Example

1. Bundle and install gems
<pre>
$ bundle install
</pre>

2. Source Jars in tester.rb ln:16
<pre>
jars = [
  "/home/thrive/rails_projects/rjb_oscar/jars/commons-lang-2.1.jar", 
  "/home/thrive/rails_projects/rjb_oscar/jars/oscar4-all-4.1-with-dependencies.jar", 
]
</pre>

3. Run
<pre>
$ ruby tester.rb
</pre>


##### should see something like:

<pre>
PARSED:
3-bromobenzophenone
 
MeOH
[Structure:INCHI:InChI=1/CH4O/c1-2/h2H,1H3]
 
sodium borohydride
[Structure:INCHI:InChI=1/BH4.Na/h1H4;/q-1;+1]
 
1-
 
water
[Structure:INCHI:InChI=1/H2O/h1H2]
 
CH2Cl2
[Structure:INCHI:InChI=1/CH2Cl2/c2-1-3/h1H2]
 
water
[Structure:INCHI:InChI=1/H2O/h1H2]
 
brine
 
Na2SO4
[Structure:INCHI:InChI=1/2Na.H2O4S/c;;1-5(2,3)4/h;;(H2,1,2,3,4)/q2*+1;/p-2/f2Na.O4S/q2m;-2]
 
ion
 
M-OH

</pre>


