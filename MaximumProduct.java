import java.util.Scanner;
public class MaximumProduct {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter array size: ");
        int n = sc.nextInt();
        int[] nums = new int[n];
        System.out.println("Enter array elements:");
        for (int i = 0; i < n; i++) {
            nums[i] = sc.nextInt();
        }
        int max1 = 0;
        int max2 = 0
        for (int i = 0; i < n; i++) {
            if (nums[i] > max1) {
                max2 = max1;
                max1 = nums[i];
            } else if (nums[i] > max2) {
                max2 = nums[i];
            }
        }
        int product = (max1 - 1) * (max2 - 1);
        System.out.println("Maximum Product = " + product);
    }
}