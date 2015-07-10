package spring1;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test 
{
	public static void main(String[] args) {
		
		
		ApplicationContext context =new ClassPathXmlApplicationContext("spring.xml");
		Employee emp=(Employee)context.getBean("object");
		System.out.println(emp.toString());
		
				

}
	
}
