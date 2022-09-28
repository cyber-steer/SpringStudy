package temp;


public class Main {
	public static void main(String[] args) {
//		for(int nowPage=1; nowPage<100;nowPage++) {
//			int Page = ((nowPage-1)/10)*10-9;
//			System.out.println(nowPage+" : "+Page);
//		}
//		for(int nowPage=1; nowPage<100;nowPage++) {
//			int Page = ((nowPage-1)/10)*10+11;
//			System.out.println(nowPage+" : "+Page);
//		}
		int page = 10;
		int numberOfRecords = 10;
		int count = 1;
		int start = (page-1)/numberOfRecords*10+1;
		int end = (int) Math.ceil((double)count/numberOfRecords)-start+1;
		int tmp = (int) Math.ceil((double)count/numberOfRecords);
		end = end >= 10 ? 10 : end;
//		System.out.println(tmp/10);
		
//		for(int i=1;i<350;i 	+= 5) {
//			tmp = (int) Math.ceil((double)i/numberOfRecords);
//			System.out.println(i+" : "+((i-1)/10)+", temp : "+(int) Math.ceil((double)tmp/10));
//		}
		for(double i=0;i<123;i++) {
//			System.out.println(((i-1)/10)*10+11);
		}
		for(double p =0;p<15;p++) {
			System.out.println((p-1)/numberOfRecords*10+1);
			
		}
		for(int p =0;p<15;p++) {
			System.out.println((p-1)/numberOfRecords*10+1);
			
		}
	}
}
