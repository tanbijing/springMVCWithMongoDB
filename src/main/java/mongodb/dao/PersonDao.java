package mongodb.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import mongodb.pojo.Person;

@Repository
public class PersonDao {
	@Autowired
	MongoTemplate mongoTemplate;
	public void insert(Person p){
		mongoTemplate.insert(p);
	}
	public List<Person> search(){
		return mongoTemplate.find(new Query().limit(1000), Person.class);
	}
}
