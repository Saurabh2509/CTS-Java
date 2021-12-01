import java.util.*;
class Customer{
    private int customerId;
    private String customerName;
    private String contactNo;
    private double paymentDone;
    Customer(int customerId, String customerName, String contactNo, double paymentDone){
        this.customerId=customerId;
        this.customerName=customerName;
        this.contactNo=contactNo;
        this.paymentDone=paymentDone;
    }
    public void displayDetail(){
        System.out.println("Customer Id: "+customerId);
        System.out.println("Customer Name: "+customerName);
        System.out.println("Cpntact Number: "+contactNo);
        System.out.println("Payment Done: "+paymentDone);
    }
    public double getPaymentDone(){
        return paymentDone;
    }
}
public class Week_11_4{
    private static Customer obj[]=new Customer[3];
    public static void displayTotalPayment(){
        double sum=0.0;
        for(int i=0;i<3;i++)
            sum=sum+obj[i].getPaymentDone();
        System.out.println("Total Payment Done is "+sum+" Rs");
    }
    public static void highestPaymentDone(){
        if(obj[0].getPaymentDone()>obj[1].getPaymentDone()){
            if(obj[0].getPaymentDone()>obj[2].getPaymentDone())
                obj[0].displayDetail();
            else
                obj[2].displayDetail();
        }
        else{
            if(obj[1].getPaymentDone()>obj[2].getPaymentDone())
                obj[1].displayDetail();
            else
                obj[2].displayDetail();
        }
    }
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        for(int i=0;i<3;i++){
            System.out.println("Enter Details of Customer "+(i+1));
            System.out.print("Enter Customer ID: ");
            int customerId=sc.nextInt();
            sc.nextLine();
            System.out.print("Enter Customer Name: ");
            String customerName=sc.nextLine();
            System.out.print("Enter Contact No: ");
            String contactNo=sc.nextLine();
            System.out.print("Enter Payment Done: ");
            double paymentDone=sc.nextDouble();
            System.out.println("");
            obj[i]= new Customer(customerId,customerName,contactNo,paymentDone);
        }
        displayTotalPayment();
        highestPaymentDone();
    }
}
