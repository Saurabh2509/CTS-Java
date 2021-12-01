import java.util.*;
class Magazine{
    private int id;
    private String title;
    private String author;
    private double price;
    Magazine(int id, String title, String author, double price){
        this.id=id;
        this.title=title;
        this.author=author;
        this.price=price;
    }
    public double discountedPrice(double discountPercentage){
        price=price-((discountPercentage/100)*price);
        return price;
    }
    public void displayDetails(){
        System.out.println("Magazine Details:");
        System.out.println("id: "+id);
        System.out.println("title: "+title);
        System.out.println("author: "+author);
        System.out.println("price: "+price);
    }
}
public class third
{
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.print("Enter id: ");
		int id=sc.nextInt();
		sc.nextLine();
		System.out.print("Enter title: ");
		String title=sc.nextLine();
		System.out.print("Enter author: ");
		String author=sc.nextLine();
		System.out.print("Enter price: ");
		double price=sc.nextDouble();
		System.out.print("Enter discount percentage: ");
		double discountPercentage=sc.nextDouble();
		Magazine obj=new Magazine(id,title,author,price);
		obj.displayDetails();
		System.out.println("Price after discount= "+obj.discountedPrice(discountPercentage));
	}
}
