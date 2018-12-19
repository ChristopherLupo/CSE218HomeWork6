public class StringSorter implements Comparable {
	private String word;

	public StringSorter(String word) {
		super();
		this.word = word;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	@Override
	public int compareTo(Object o) {
		if (this.word.length() < ((StringSorter) o).word.length()) {
			return -1;
		} else if (this.word.length() > ((StringSorter) o).word.length()) {
			return 1;
		} else {
			return this.word.compareTo(((StringSorter) o).word);
		}
	}
}

import java.util.Arrays;
import java.util.Scanner;

public class Demo {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.println("Enter ten names:");

		StringSorter list[] = new StringSorter[10];

		for (int i = 0; i < 10; i++) {
			list[i] = new StringSorter(input.next());
		}
		
		Arrays.sort(list);
		
		for (int i = 0; i < 10; i++) {
			System.out.println(list[i].getWord()); 
		}
	}

}
