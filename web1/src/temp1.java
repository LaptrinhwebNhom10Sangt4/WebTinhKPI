import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class temp1 {

	public static void main(String[] args){
		// TODO Auto-generated method stub
		String a = new String("Nguyen%20Van%20A");
		try {
			a = java.net.URLDecoder.decode(a, "UTF-8");
			System.out.println(a);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
