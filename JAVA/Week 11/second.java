import java.util.*;
class Rectangle{
	int length;
	int breadth;
	Rectangle(int length, int breadth){
		this.length=length;
		this.breadth=breadth;
	}
	int rectangleArea(){
		return length*breadth;
	}
}
class Second{
	public static void main(String[] args){
		Scanner sc=new Scanner(System.in);
		int length=sc.nextInt();
		int breadth=sc.nextInt();
		Rectangle obj=new Rectangle(length,breadth);
		System.out.println("Area= "+obj.rectangleArea());
	}
}
