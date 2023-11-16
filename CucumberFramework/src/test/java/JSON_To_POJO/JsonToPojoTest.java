package JSON_To_POJO;

import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

//import com.cooltrickshome.Batter;
//import com.cooltrickshome.Batters;
//import com.cooltrickshome.TfsSuite;
//import com.cooltrickshome.TfsSuite2;
import com.google.gson.Gson;
import com.pojoclass.Batter;
import com.pojoclass.Batters;
import com.pojoclass.SampleJSON;
import com.pojoclass.Topping;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class JsonToPojoTest {
	
	
	
 
	
	public static void main(String [] args) {
		
//		PracticeTFS2 t2 = new Gson().fromJson(json, typeOfT)
		
		
		
		try {
			
			
			Reader reader = Files.newBufferedReader(Paths.get(System.getProperty("user.dir")+"/src/test/java/JSON_To_POJO/SampleJSON.json"));
			Gson gSon = new Gson();
			
			

			
			SampleJSON t2 = gSon.fromJson(reader, SampleJSON.class);
			
			
			System.out.println(t2.getType());
			System.out.println(t2.getName());
			System.out.println(t2.toString());
			
			
			Batters batters = t2.getBatters();
			List<Batter> batter = batters.getBatter();
			
			for(Batter bt:batter) {
				
//				System.out.println(bt.getId());
//				System.out.println(bt.getType());
				System.out.println(bt.toString());
				
			}

			List<Topping> tp = t2.getTopping();
			
			
//			// "forEach()" method for List in Java 8 with Lambda expression
//			tp.stream().parallel().forEachOrdered(topping -> System.out.println(topping.toString()));  
			
			
			System.out.println("------------------------------------------------------------------------");
			tp.
			stream().
			parallel().
			filter(topping->topping.getType().startsWith("C")).
			forEachOrdered(topping->System.out.println(topping.getType()));
			//forEachOrdered(topping -> System.out.println(topping.getType()));
			
			System.out.println("------------------------------------------------------------------------");
			
			tp.
			stream().
			parallel().
			filter(topping->topping.getType().startsWith("C")).
			forEachOrdered(topping->{
				if(topping.getType().contains("Chocolate with Sprinkles")) {
					
					System.out.println(topping.getType());
				}
//				else {
//					
//					System.out.println("Nothing Matched");
//				}
				
			});
			System.out.println(batter.size());
			
			reader.close();
			

		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		
		
	}

}
