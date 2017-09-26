package mongodb.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class MongoDBs {
	@Autowired
	MongoTemplate mongoTemplate;
	public List<String> getDbs(){
		return mongoTemplate.getDb().getMongo().getDatabaseNames();
	}
}
