package mongodb.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mongodb.pojo.Person;
import mongodb.service.impl.MongoDbsServiceImpl;
import mongodb.service.impl.PersonServiceImpl;

@Controller
@RequestMapping("/first")
public class FirstController {
	@Autowired
	PersonServiceImpl personService;
	@Autowired
	MongoDbsServiceImpl mongoDBService;
	
	@RequestMapping("/index")
	@ResponseBody
	public String firstMongodb(){
		personService.insert("tom", 4, "zj");
		return personService.search().toString();
	}
	@RequestMapping("/list")
	public ModelAndView list(){
		List<Person> ps = personService.search();
		Map<String, List<Person>> list = new HashMap<String, List<Person>>();
		list.put("list", ps);
		return new ModelAndView("first/list", list);
	}
	@RequestMapping("/dbs")
	public ModelAndView dbs(){
		List<String> dbs = mongoDBService.getDbs();
		Map<String, List<String>> list = new HashMap<String, List<String>>();
		list.put("dbs", dbs);
		return new ModelAndView("first/dbs", list);
	}
}
