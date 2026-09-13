import java.util.Scanner;
public class SecondMaxElelment {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter array size: ");
        int n = sc.nextInt();
        int[] nums = new int[n];
        System.out.println("Enter array elements: ");
        for(int i = 0 ; i<n ; i++)
        {
            nums[i]=sc.nextInt();
        }
        int max = Integer.MIN_VALUE;
        int smax = Integer.MIN_VALUE;
        for(int i = 0 ; i<n ; i++)

            if(nums[i]>max)
            {
                max=nums[i];
            }
            for (int i=0; i<n;i++){
                if(nums[i]>smax && nums[i] != max)
                    smax=nums[i];
            }

        System.out.println("The Max Element is "+max);
        System.out.println("The Second Max Element is "+smax);
    }
}
