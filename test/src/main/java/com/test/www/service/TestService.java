package com.test.www.service;

import java.util.List;

import com.test.www.vo.AccountVO;
import com.test.www.vo.AllVO;
import com.test.www.vo.CountryVO;
import com.test.www.vo.CustomVO;

public interface TestService {
	
	public void insertCustomInfo(CustomVO customVO)throws Exception;
	public void insertAccountInfo(AccountVO accountVO)throws Exception;
	public int busiNumDupChk(String busiNum)throws Exception;
	public List<CountryVO> searchCountry(CountryVO countryVO)throws Exception;
	public List<AllVO> searchBusiInfo(AllVO allVO)throws Exception;
	public AllVO selectByBusiNum(String busiNum)throws Exception;
	public void updateCustom(CustomVO customVO)throws Exception;
	public void updateAccount(AccountVO accountVO)throws Exception;
	public void deleteCustom(String busiNum)throws Exception;
	public void deleteAccount(String busiNum)throws Exception;
}
