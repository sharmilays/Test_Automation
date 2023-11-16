package Connect.TFS;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PracticeTFS {

	private @Getter int a = 1;
	private @Getter String b = "xyz";
	private @Getter boolean c = true;
	
	
	public static void main(String [] args) throws Exception {
		
//		PracticeTFS t = new PracticeTFS();
//		
//		System.out.println(t.toString());
		
//		ConnectToTFS.updateFieldOfWorkItem("189189", "add:/fields/System.TeamProject:HealthAtWork,add:/fields/System.AreaPath:HealthAtWork\\\\Pfizer,add:/fields/System.IterationPath:HealthAtWork\\\\Pfizer");
	
//		ConnectToTFS.deleteTFsTestSuite("938177", "945144");
		
		int a = 200;
		System.out.println(String.valueOf(a));
	
	}
	
	
	
	

}
