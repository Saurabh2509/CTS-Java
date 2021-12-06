import java.util.*;
import java.text.DecimalFormat;
public class first
{
	public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        String str, result="";
        System.out.print("Enter String:");
        str = sc.nextLine();;
        for(int i= str.length() - 1; i>=0; i--)
            result= result + str.charAt(i);
        
        if (str.equals(result))
            System.out.println("Given string is palindrome");
        else
            System.out.println("Given string is not palindrome");
	}
}
