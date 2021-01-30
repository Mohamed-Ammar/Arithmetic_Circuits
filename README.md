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
Cout = A and B</pre>
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/HalfAdder/Half-adder-circuit-diagram.png)
___
### Full Adder
Simple implementations of full adder using two half adder as shown in  the figure to be used in building more complex circuits.
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/FullAdder/fulladder.png)
*Both the full adder and the half adder will be treated as building blocks for larger  adders and multipliers.*
___
### Ripple Carry Adder
It can be implemented easily using Full Adders which saves in designing time. It can be noticed that if  Cin = 0 the first FA can be replaced with HA. Also it good to notice that each FA wait for the Cout of the previous which make the Ripple Carry Adder slower as number of bits increase
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/RippleCarryAdder/8bit-ripple-carry-adder.jpg)
___
### Carry Bypass Adder 
The idea here is to get the carry ready in time less than that of the simple ripple carry adder. As we don't need to wait for the last Cout if its not propagating through the whole cell.
So rather than using 16-bit ripple carry adder and wait for Cout to come at the last bit we can divide it into (2) 8-bit Carry Bypass Adder in which we wait for the Cout if its propagating only 
I used a Setup module to calculate the P<sub>s</sub> and according to its value assign the Carry. *P<sub>i</sub> = A<sub>i</sub> xor B<sub>i</sub>*
Carry Bypass Adder is built using smaller ripple carry adder by dividing the total bits 
Implemented here is a 16-bit using (2) 8-bit ripple carry adder 
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/CarryBypassAdder/CBA.PNG)
___
### Carry Select Adder
Its considered to have large area yet gives good performance so its a good choice if we want performance and speed over area.
It uses to carry chain and a multiplexer it the addition operation is done in the first add chain assuming Cin is 0 and in the other chain assuming Cin is 1 so as soon as the carry arrive it just selects from the mux which output of which chain to we want.
Implemented here a 16bit Carry Select Adder in which each add chain is an 8 bit ripple carry adder.
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/CarrySelectAdder/CSA.PNG)

*The shown is a 4bit just for illustration.* ***This not the implemented***
___
### Carry Look-Ahead Adder
A carry-look ahead adder improves speed by reducing the amount of time required to determine carry bits.

The carry-lookahead adder calculates one or more carry bits using Generate and Propagate (G,P) before the sum, which reduces the wait time to calculate the result of the larger-value bits of the adder.

Carry-lookahead depends on two things:
-   Calculating for each digit position whether that position is going to propagate a carry if one comes in from the right.
-   Combining these calculated values to be able to deduce quickly whether, for each group of digits, that group is going to propagate a carry that comes in from the right.
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/CarryLook-aheadAdder/CLA.png)
*The shown is a 4bit just for illustration.* ***This not the implemented***
___
### Kogge-Stone Adder
