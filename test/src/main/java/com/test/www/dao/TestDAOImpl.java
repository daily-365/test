package com.test.www.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.www.vo.AccountVO;
import com.test.www.vo.AllVO;
import com.test.www.vo.CountryVO;
import com.test.www.vo.CustomVO;

@Repository
public class TestDAOImpl implements TestDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertInfo(CustomVO coustomVO) throws Exception {
		sqlSession.insert("TestMapper.insertCustomInfo", coustomVO);
		
	}

	@Override
	public void insertAccount(AccountVO accountVO) throws Exception {
		sqlSession.insert("TestMapper.insertAccountInfo",accountVO);
		
	}

	@Override
	public int busiNumDupChk(String busiNum) throws Exception {
		return sqlSession.selectOne("TestMapper.busiNumDupChk",busiNum);
	}

	
	
	@Override
	public List<CountryVO> searchCountry(CountryVO countryVO) throws Exception {
		return sqlSession.selectList("TestMapper.searchCountry",countryVO);
	}

	@Override
	public List<AllVO> searchBusiInfo(AllVO allVO) throws Exception {
		return sqlSession.selectList("TestMapper.selectSearch",allVO);
	}

	@Override
	public AllVO selectByBusiNum(String busiNum) throws Exception {
		return sqlSession.selectOne("TestMapper.selectByBusiNum",busiNum);
	}

	@Override
	public void updateCustom(CustomVO customVO) throws Exception {
		sqlSession.update("TestMapper.updateCustomInfo",customVO);
		
	}

	@Override
	public void updateAccount(AccountVO accountVO) throws Exception {
		sqlSession.update("TestMapper.updateAccountInfo",accountVO);
		
	}

	@Override
	public void deleteCustom(String busiNum) throws Exception {
		sqlSession.delete("TestMapper.deleteCustomInfo",busiNum);
	}

	@Override
	public void deleteAccount(String busiNum) throws Exception {
		sqlSession.delete("TestMapper.deleteAccountInfo",busiNum);
		
	}


}
