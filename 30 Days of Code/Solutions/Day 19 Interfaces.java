//
//  Day 19 Interfaces.java
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 24/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-interfaces/problem

import java.io.*;
import java.util.*;

interface AdvancedArithmetic{
   int divisorSum(int n);
}

class Calculator implements AdvancedArithmetic {
    public int divisorSum(int n) {
        if (n == 1) {
            return n;
        }

        int ans = n;

        for (int i = 1; i <= n/2; i++) {
            if (n % i == 0) {
                ans += i;
            }
        }

        return ans;
    }
}

class Solution {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();
        scan.close();
        
      	AdvancedArithmetic myCalculator = new Calculator(); 
        int sum = myCalculator.divisorSum(n);
        System.out.println("I implemented: " + myCalculator.getClass().getInterfaces()[0].getName() );
        System.out.println(sum);
    }
}
