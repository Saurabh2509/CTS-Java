public class third
{
	public static void main(String[] args) {
        int count = 10, a = 0, b = 1;
        int i=1;
        do
        {
            System.out.print(a+" ");
            int c= a+b;
            a= b;
            b= c;
            i++;
        }while(i<=count);
	}
}
