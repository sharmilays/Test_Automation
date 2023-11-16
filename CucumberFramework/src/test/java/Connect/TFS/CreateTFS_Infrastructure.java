package Connect.TFS;

public class CreateTFS_Infrastructure {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
//		/*Create Test Suite*/
//		System.out.println(ConnectToTFS.createTFsTestSuite("938177","938178","SalesForceWinterReleaseAutomationExecution"));
		
		/*Copy Test Cases to Test Suite*/
		ConnectToTFS.copyTestCasesToTestSuite("938177","938447","174853,174884,174885,174886,174887,174907,175004,175039,175047,175048,175050,175051,175182,175020,175143");

	}

}
