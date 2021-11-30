import java.util.*;
import java.text.DecimalFormat;
public class Main
{
	public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        DecimalFormat f = new DecimalFormat("#0.0"); 
        float Fahrenheit, Celsius;
        System.out.print("Given Temprature in Fahrenheit: ");
        Fahrenheit= sc.nextInt();
        Celsius  = ((Fahrenheit-32)*5)/9;  
        System.out.println(f.format(Fahrenheit)+" degree Fahrenheit is equal to "+f.format(Celsius)+" in Celsius");  
	}
}
