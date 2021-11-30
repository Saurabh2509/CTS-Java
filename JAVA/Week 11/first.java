import java.util.*;
class ProductTwoNum{
    int num1;
    int num2;
    int computeProb(int num1, int num2){
		this.num1=num1;
		this.num2=num2;
        return num1*num2;
    }
}
public class first{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        ProductTwoNum obj=new ProductTwoNum();
        int num1=sc.nextInt();
        int num2=sc.nextInt();
        System.out.printf("The product of %d and %d is %d",num1,num2,obj.computeProb(num1,num2));
    }
}
