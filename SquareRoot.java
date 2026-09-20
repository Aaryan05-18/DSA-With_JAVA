import java.util.Scanner;
public class SquareRoot {
    public static int mySqrt(int x) {
        if (x == 0 || x == 1) {
            return x;
        }
        int low = 1;
        int high = x / 2;
        int ans = 0;
        while (low <= high) {
            int mid = low + (high - low) / 2;
            if ((long) mid * mid <= x) {
                ans = mid;
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return ans;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter x: ");
        int x = sc.nextInt();
        System.out.println("Square root = " + mySqrt(x));
    }
}

