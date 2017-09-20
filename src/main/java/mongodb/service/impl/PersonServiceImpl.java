package mongodb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mongodb.dao.PersonDao;
import mongodb.pojo.Person;
import mongodb.service.PersonService;
@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonDao personDao;
	@Override
	public void insert(String name, Integer age,String address) {
		// TODO Auto-generated method stub
		personDao.insert(new Person(name, age, address));
	}
	@Override
	public List<Person> search() {
		// TODO Auto-generated method stub
		return personDao.search();
	}

}
