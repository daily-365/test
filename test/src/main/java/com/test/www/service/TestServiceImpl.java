package com.test.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.www.dao.TestDAO;
import com.test.www.vo.AccountVO;
import com.test.www.vo.AllVO;
import com.test.www.vo.CountryVO;
import com.test.www.vo.CustomVO;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	private TestDAO testDAO;
	
	@Override
	public void insertCustomInfo(CustomVO customVO) throws Exception {
		testDAO.insertInfo(customVO);
		
	}

	@Override
	public void insertAccountInfo(AccountVO accountVO) throws Exception {
		testDAO.insertAccount(accountVO);
	}

	@Override
	public int busiNumDupChk(String busiNum) throws Exception {
		return testDAO.busiNumDupChk(busiNum);
	}

	
	@Override
	public List<CountryVO> searchCountry(CountryVO countryVO) throws Exception {
		return testDAO.searchCountry(countryVO);
	}

	@Override
	public List<AllVO> searchBusiInfo(AllVO allVO) throws Exception {
		return testDAO.searchBusiInfo(allVO);
	}

	@Override
	public AllVO selectByBusiNum(String busiNum) throws Exception {
		return testDAO.selectByBusiNum(busiNum);
	}

	@Override
	public void updateCustom(CustomVO customVO) throws Exception {
		testDAO.updateCustom(customVO);
		
	}

	@Override
	public void updateAccount(AccountVO accountVO) throws Exception {
		testDAO.updateAccount(accountVO);
		
	}

	@Override
	public void deleteCustom(String busiNum) throws Exception {
		testDAO.deleteCustom(busiNum);
		
	}

	@Override
	public void deleteAccount(String busiNum) throws Exception {
		testDAO.deleteAccount(busiNum);
		
	}
	

}
