package temp;

import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {

		ArrayList<Integer> arr = new ArrayList<Integer>();
		arr.add(1);
		arr.add(2);
		arr.add(3);
		ArrayList<Integer> arr_copy = arr;
		
		arr_copy.add(4);
		arr_copy.remove(3);
		arr_copy.remove(2);
		arr_copy.remove(1);
		arr_copy.remove(0);
		
		System.out.println("arr");
		for(int i=0;i<arr.size();i++) {
			System.out.println(arr.get(i));
		}
		
		System.out.println("======================");
		System.out.println("arr_copyt");
		for(int i=0;i<arr.size();i++) {
			System.out.println(arr_copy.get(i));
		}
		

	}
}
