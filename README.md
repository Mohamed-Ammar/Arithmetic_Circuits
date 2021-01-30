# Arithmetic Circuits
Adding binary numbers is one of the most important operation in digital computers. Multiplying binary numbers is also important but analyzing that multiplication is built using multiple add operation. So, We concern about adders and how fast it could be.
Here are some types of adders starting by the simple Ripple Carry Adder moving forward into more faster adders.
*Ripple Carry Adder, Carry Bypass Adder, Carry select Adder, Look Ahead Adder and Kogge-Stone Adder
Besides as example for Multipliers 
Array Multiplier, Wallace Tree Multiplier and Dadda Multiplier* 
***are implemented here using verilog***
## Adders
###  Half Adder 
Simple implementations of the half adder to be used in building more complex circuits.
<pre/>S    = A xor B
Cout = A and B </pre>
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/HalfAdder/Half-adder-circuit-diagram.png)

### Full Adder
Simple implementations of full adder using two half adder as shown in  the figure to be used in building more complex circuits.
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/FullAdder/fulladder.png)
*Both the full adder and the half adder will be treated as building blocks for larger  adders and multipliers.*
