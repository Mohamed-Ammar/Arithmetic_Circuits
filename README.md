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
Implemented here is a 16-bit using (2) 8-bit ripple carry adder.
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
Kogge-Stone Adder is an example for the parallel prefix adders where we make use of group generate (G) and group propagate (P) to be able to get the carry in any bit position by the use of the initial carry Cin
The dot operator gets the current G and P knowing the previous ones 
<pre/>P   = P<sub>i</sub> and P<sub>iprev</sub>
G = G<sub>i</sub> or ( P<sub>i</sub> and G<sub>iprev</sub>)
</pre>
The sum unit performs the sum and calculates the carry using the grouped generate and propagate that calculated in the dot module
<pre/>Sum   = P<sub>i</sub> xor C<sub>in</sub>
C<sub>out</sub> = G or ( P and C<sub>in</sub>)
</pre>
However, its one if the fastest adders and has a good fanout over other parallel prefix adder but the number of dot operators increase with the increase of bits leading to very large number of wires that considered a disadvantage when it come to PnR.
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/Kogge-StoneAdder/KSA.PNG)
___
## Multipliers
### Array Multiplier
We first get each partial product  terms as
<pre> Z<sub>ij</sub> = A<sub>i</sub>B<sub>j</sub> </pre>
forming lines of Z<sub>s</sub>
example of 2 Bit Multiplication
<pre>      B<sub>1</sub>   B<sub>0</sub>
      A<sub>1</sub>   A<sub>0</sub>
_________________
      A<sub>0</sub>B<sub>1</sub>  A<sub>0</sub>B<sub>0</sub>
A<sub>1</sub>B<sub>1</sub>  A<sub>1</sub>B<sub>0</sub> 
__________________
       Z<sub>01</sub>  Z<sub>00</sub>
Z<sub>11</sub>    Z<sub>10</sub>
__________________
Result </pre>
So first line module generate the Z at each line then using Full Adders and Half adders as shown to get the Result.
Its good to notice that Array Multiplier consumes large area but on the other hand gives high throughput

![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/ArrayMultiplier/Array_Mul.PNG)
___
### Wallace-Tree Multiplier
The basic idea is that the column of Z<sub>i</sub> can be added in any order we only want at the end that the whole elements in the column to be added together along side with the carry that comes from Col<sub>i-1</sub>
So, we re arrange the el partial products to be as shown below

![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/WallaceTreeMUL/WT_MUL1.PNG)

Then instantiating Full adders and Half adders to perform the sum want to leave at each column a 2 bits so that the last operation can be done using a fast adder rather than going with FA and HA as it will have higher delay
![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/WallaceTreeMUL/WT_MUL2.PNG)
___
### DADDA Multiplier
DADDA multipliers are very similar to Wallace tree multipliers. In fact, they follow pretty much the same algorithm. The main difference is that while the Wallace tree multiplier aims for maximum coverage in any single step, DADDA multipliers may under cover certain steps in order to reduce the total number of adders used.
This is done using a parameter d in which 
<pre> d<sub>k+1</sub> = floor(1.5 * d<sub>k</sub>) and d<sub>1</sub> = 2 So d = 2,3,4,6,9,13....
we start with d = min(M,N) for MxN </pre>
For every stage starting from LSB position and moving leftwards
 • If the position has bits less than d, move on
  • If the position has bits equal to d + 1, use an HA to compress two bits, pushing one result to the next position. The current position would be reduced to d, allowing us to move to the next bit position
   • If the position has any higher number of bits, use an FA to compress, pushing bits and repeating again from the first step. In other words, this step would keep us looping on the same position until the height in the position reduces to d.

![alt text](https://github.com/Mohamed-Ammar/Arithmetic_Circuits/blob/main/Arithmetic/DaddaMultiplier/dadda.PNG)
___
## Reference
Handbook Of Digital CMOS Technology, Circuits and Systems 
chapter 11
by Dr. Karim Abbas
