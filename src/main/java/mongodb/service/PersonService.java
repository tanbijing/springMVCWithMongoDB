package mongodb.service;

import java.util.List;

import mongodb.pojo.Person;

public interface PersonService {
	public void insert(String name, Integer age,String address);
	public List<Person> search();
}
