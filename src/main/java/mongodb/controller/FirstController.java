package mongodb.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.MongoDbFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mongodb.service.impl.PersonServiceImpl;

@Controller
@RequestMapping("/first")
public class FirstController {
	@Autowired
	PersonServiceImpl personService;
	
	@RequestMapping("/index")
	@ResponseBody
	public String firstMongodb(){
		personService.insert("tom", 4, "zj");
		return personService.search().toString();
	}
}
