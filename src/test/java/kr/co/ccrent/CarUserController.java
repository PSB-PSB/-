package kr.co.ccrent;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import kr.co.ccrent.mapper.CarUserDAO;



@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CarUserController {

	
	@Autowired
	private CarUserDAO carUserDAO;
	
	@Test
	public void sdfsda() {
		System.out.println(carUserDAO.selectTime());
	}
}
