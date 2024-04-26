package com.test.www.dao;

import java.util.List;
import java.util.Map;

import com.test.www.vo.AccountVO;
import com.test.www.vo.AllVO;
import com.test.www.vo.CountryVO;
import com.test.www.vo.CustomVO;

public interface TestDAO {

	public void insertInfo(CustomVO coustomVO)throws Exception;
	public void insertAccount(AccountVO accountVO)throws Exception;
	public int busiNumDupChk(String busiNum)throws Exception;
	public List<CountryVO>searchCountry(CountryVO countryVO)throws Exception;
	public List<AllVO>searchBusiInfo(AllVO allVO)throws Exception;
	public AllVO selectByBusiNum(String busiNum)throws Exception;
	public void updateCustom(CustomVO customVO)throws Exception;
	public void updateAccount(AccountVO accountVO)throws Exception;
	public void deleteCustom(String busiNum)throws Exception;
	public void deleteAccount(String busiNum)throws Exception;
}
