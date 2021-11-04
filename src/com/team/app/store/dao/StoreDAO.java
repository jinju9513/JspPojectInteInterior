package com.team.app.store.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.store.vo.StoreVO;
import com.team.mybatis.config.SqlMapConfig;

public class StoreDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public StoreDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//카테고리별 가져오기
	public List<StoreVO> getStoreCategory(String product_category) {
		return sql_session.selectList("Store.getStoreCategory",product_category);
	}
	
	
	
	
}
