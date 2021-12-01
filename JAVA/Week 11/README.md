<h2> Week 11 Hand-on Problems</h2>
<pre>
1. Problem Title: Product class
Create class ProductTwoNum with two integer values and computes their product by calling the instance method int computeProd(int num1, int num2).
Sample Input 1
  Num1 : 20
  Num2 : 3
Sample Output 1
  The product of 20 and 3 is 60.
</pre>
  
<pre>
2. Problem Title: Area calculation and print details
Write a program to print the area of two rectangles having sides (4,5) and (5,8) respectively by creating a class named ‘Rectangle’ with a method named ‘rectangleArea’ which returns the area and length and breadth passed as parameters to its constructor.
Sample Output 1
  Print the area of the Rectangle
</pre>

<pre>
3. Smith has library of magazines. He wants to maintain information of magazines. Write a java program for this. Create a class Magazine with the following attributes:
id, title, author, price
Methods:
•Parameterized constructor
•displaydetails() to display the details of the magazines
•discountedPrice() : pass the discount percent, calculate the discount on price and return
the amount to be paid after discount


Magazine
-id:int
-title:String
-author:String
-price:double
+displayDetails():void
+discountedPrice(discountPercentage):double


Here attributes are private variables and methods are public
Create class Main, Initialize magazine object using parameterized constructor and invoke
discountedPrice() and displayDetails() methods.
Sample Input 1
If below sample values are set for magazine object

Id	Title	            Author	              Price
23	Journey of Life	  Michael Jo	          600

Enter discount percentage: 5
Sample Output 1
Magazine Details:
Id: 23
Title: Journey of Life
Author: Michael Jo
Price: 570
</pre>
<pre>
4. Alina has to keep track of customers data who are buying products from her shop. For this create a class Customer with the following attributes:
customerId, customerName, contactNo, paymentDone
Methods:
•Parameterized constructor
•display customer details
•return the payment done by a customer (getter)

Customer
-customerId:int
-customerName:String
-contactNo:String
-paymentDone:double
+displayDetails():void
+getPaymentDone():double


Here, attributes are private variables and methods are public. Write parameterized constructor with parameter names as:
Customer(customerId,customerName,contactNo,paymentDone)

Create class Main, create 3 customers object, and perform the following operations
•Display total payment done
•Display customer details who has paid highest payment

Create two separate functions for above 2 tasks within Main class as

Main
+displayTotalPayment():void
+highestPaymentDone():void

Sample Input 1
If below sample values are set for customer object

customerId	customerName	contactNo	paymentDone
56	Anjali	9123456789	700
89	Sujoy	8123456790	360
22	Manju	7654389129	1200

Sample Output 1
Total payment done is 2260 Rs.
Highest payment done customer details:
Customer Id: 22
Customer Name: Manju
Contact number: 7654389129
Payment done: 1200
</pre>
