package mongodb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mongodb.dao.MongoDBs;
import mongodb.service.MonGoDBService;
@Service
public class MongoDbsServiceImpl implements MonGoDBService {
	@Autowired
	private MongoDBs dao;
	@Override
	public List<String> getDbs() {
		return dao.getDbs();
	}

}
