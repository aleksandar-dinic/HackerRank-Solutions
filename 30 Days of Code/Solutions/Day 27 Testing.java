//
//  Day 27 Testing.java
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-testing/problem

import java.util.*;

public class Solution {

    public static int minimum_index(int[] seq) {
        if (seq.length == 0) {
            throw new IllegalArgumentException("Cannot get the minimum value index from an empty sequence");
        }
        int min_idx = 0;
        for (int i = 1; i < seq.length; ++i) {
            if (seq[i] < seq[min_idx]) {
                min_idx = i;
            }
        }
        return min_idx;
    }

    static class TestDataEmptyArray {
    	// Returns an empty array.
        public static int[] get_array() {
            return new int[0];
        }
    }

    static class TestDataUniqueValues {
    	// Returns an array of size at least 2 with all unique elements
        public static int[] get_array() {
            return new int[]{5,8,2,4};
        }

        // Returns the expected minimum value index for this array
        public static int get_expected_result() {
            return 2;
        }
    }

    static class TestDataExactlyTwoDifferentMinimums {
    	// Returns an array where there are exactly two different minimum values
        public static int[] get_array() {
            return new int[]{5,3,9,1,1,5,6,7};
        }

        // Returns the expected minimum value index for this array.
        public static int get_expected_result() {
            return 3;
        }
    }

    public static void TestWithEmptyArray() {
        try {
            int[] seq = TestDataEmptyArray.get_array();
            int result = minimum_index(seq);
        } catch (IllegalArgumentException e) {
            return;
        }
        throw new AssertionError("Exception wasn't thrown as expected");
    }

    public static void TestWithUniqueValues() {
        int[] seq = TestDataUniqueValues.get_array();
        if (seq.length < 2) {
            throw new AssertionError("less than 2 elements in the array");
        }

        Integer[] tmp = new Integer[seq.length];
        for (int i = 0; i < seq.length; ++i) {
            tmp[i] = Integer.valueOf(seq[i]);
        }
        if (!((new LinkedHashSet<Integer>(Arrays.asList(tmp))).size() == seq.length)) {
            throw new AssertionError("not all values are unique");
        }

        int expected_result = TestDataUniqueValues.get_expected_result();
        int result = minimum_index(seq);
        if (result != expected_result) {
            throw new AssertionError("result is different than the expected result");
        }
    }

    public static void TestWithExactlyTwoDifferentMinimums() {
        int[] seq = TestDataExactlyTwoDifferentMinimums.get_array();
        if (seq.length < 2) {
            throw new AssertionError("less than 2 elements in the array");
        }

        int[] tmp = seq.clone();
        Arrays.sort(tmp);
        if (!(tmp[0] == tmp[1] && (tmp.length == 2 || tmp[1] < tmp[2]))) {
            throw new AssertionError("there are not exactly two minimums in the array");
        }

        int expected_result = TestDataExactlyTwoDifferentMinimums.get_expected_result();
        int result = minimum_index(seq);
        if (result != expected_result) {
            throw new AssertionError("result is different than the expected result");
        }
    }

    public static void main(String[] args) {
        TestWithEmptyArray();
        TestWithUniqueValues();
        TestWithExactlyTwoDifferentMinimums();
        System.out.println("OK");
    }
}
