import java.util.*;
public class second{
    public static boolean checkEnding(String str1, String str2){
        int k= str1.length()-1;
        for(int i=str2.length()-1; i>=0; i--){
            if(str1.charAt(k)!=str2.charAt(i))
                return false;
            k--;
        }
        return true;
    }
	public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        String str1, str2;
        System.out.print("Enter a String: ");
        str1= sc.nextLine();
        System.out.print("Enter ending string: ");
        str2= sc.nextLine();
        System.out.print(checkEnding(str1,str2));
	}
}
