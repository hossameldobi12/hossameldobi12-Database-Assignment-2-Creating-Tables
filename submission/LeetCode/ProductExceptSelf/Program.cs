
int[] nums = { 1, 2, 3, 4 };

Solution solution = new Solution();

int[] result = solution.ProductExceptSelf(nums);

Console.WriteLine(string.Join(", ", result));

public class Solution
{
    // 5.1
    // Time Complexity: O(n)
    // Space Complexity: O(n)
    public int[] ProductExceptSelfWithArrays(int[] nums)
    {
        int n = nums.Length;

        int[] prefix = new int[n];
        int[] suffix = new int[n];
        int[] answer = new int[n];

        // Calculate Prefix
        prefix[0] = 1;

        for (int i = 1; i < n; i++)
        {
            prefix[i] = prefix[i - 1] * nums[i - 1];
        }

        // Calculate Suffix
        suffix[n - 1] = 1;

        for (int i = n - 2; i >= 0; i--)
        {
            suffix[i] = suffix[i + 1] * nums[i + 1];
        }

        // Calculate Answer
        for (int i = 0; i < n; i++)
        {
            answer[i] = prefix[i] * suffix[i];
        }

        return answer;
    }


    // 5.2
    // Time Complexity: O(n)
    // Space Complexity: O(1) extra space
    // The output array does not count as extra space.
    public int[] ProductExceptSelf(int[] nums)
    {
        int n = nums.Length;
        int[] answer = new int[n];

        // First Pass: Calculate Prefix
        int prefix = 1;

        for (int i = 0; i < n; i++)
        {
            answer[i] = prefix;
            prefix *= nums[i];
        }

        // Second Pass: Calculate Suffix
        int suffix = 1;

        for (int i = n - 1; i >= 0; i--)
        {
            answer[i] *= suffix;
            suffix *= nums[i];
        }

        return answer;
    }
}
