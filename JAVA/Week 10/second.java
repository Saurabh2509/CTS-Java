import java.util.*;
class second
{
	public static void main(String args[])
	{
		Scanner sc= new Scanner(System.in);
		int num1, num2;
		System.out.print("Input the First Number:");
		num1=sc.nextInt();
		System.out.print("Input the Second Number:");
		num2=sc.nextInt();
		num1= num1+num2;
		num2= num1-num2;
		num1= num1-num2;
		System.out.println("After Swapping:");
		System.out.println("First Number: "+num1);
		System.out.println("Second Number: "+num2);
	}
}
