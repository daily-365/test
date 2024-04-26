package com.test.www.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.www.service.TestService;
import com.test.www.vo.AccountVO;
import com.test.www.vo.AllVO;
import com.test.www.vo.CountryVO;
import com.test.www.vo.CustomVO;

@Controller
public class TestController {
	
	@Autowired
	private TestService service;
	
	private static final Logger logger= LoggerFactory.getLogger(TestController.class);
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String getInsertCustomInfo(Model model,@ModelAttribute("allVO")AllVO allVO)throws Exception{
		logger.info("GET MAIN");
		List<AllVO> list = service.searchBusiInfo(allVO);
		model.addAttribute("list", list);
		return "index";
	}
	@RequestMapping(value = "/read",method = RequestMethod.GET)
	public String getRead(Model model,@RequestParam("BUSI_NUM")String busiNum,AllVO allVO)throws Exception{
		logger.info("GET READ");
		allVO = service.selectByBusiNum(busiNum);
		model.addAttribute("read",allVO);
		return "read";
	}

	@RequestMapping(value = "/insert",method = RequestMethod.GET)
	public String getInsertInfo()throws Exception {
		logger.info("GET WRITE VIEW");
		return "write";
	}
	
	@RequestMapping(value = "/custom/insert",method = RequestMethod.POST)
	public void postInsertCustomInfo(CustomVO customVO)throws Exception{
		logger.info("POST INSERT CUSTOM");
		service.insertCustomInfo(customVO);
	}
	@RequestMapping(value = "/account/insert",method = RequestMethod.POST)
	public void postInsertAccountInfo( AccountVO accountVO)throws Exception{
		logger.info("POST INSERT ACCOUNT");
		service.insertAccountInfo(accountVO);
		
	}
	@ResponseBody
	@RequestMapping(value = "/country/search",method = RequestMethod.POST)
	public List<CountryVO> countrySearch(CountryVO countryVO)throws Exception{
		logger.info("POST SEARCH COUNTRY");
		
		List<CountryVO> country = service.searchCountry(countryVO);
		logger.info(country.toString());
		
		return country;
	}
	
	@ResponseBody
	@RequestMapping(value = "/insert/dupChk", method = RequestMethod.POST)
	public String busiNumDupChk(@RequestParam("BUSI_NUM")String busiNum)throws Exception{
		int dupChk =service.busiNumDupChk(busiNum);
		if(dupChk>0) {
			return "N";
		}else {
			return "Y";
		}
	}
	@RequestMapping(value = "/custom/update" ,method = RequestMethod.POST)
	public void updateCustom(CustomVO customVO)throws Exception{
		logger.info("UPDATE CUSTOM");
		service.updateCustom(customVO);
	}
	@RequestMapping(value = "/account/update" ,method = RequestMethod.POST)
	public void updateAccount(AccountVO accountVO)throws Exception{
		logger.info("UPDATE ACCOUNT");
		service.updateAccount(accountVO);
	}
	
	@RequestMapping(value = "/custom/delete" ,method = RequestMethod.POST)
	public void deleteCustom(@RequestParam("BUSI_NUM")String busiNum)throws Exception{
		logger.info("DELETE CUSTOM");
		service.deleteCustom(busiNum);
	}
	
	@RequestMapping(value = "/account/delete" ,method = RequestMethod.POST)
	public void deleteAccount(@RequestParam("BUSI_NUM")String busiNum)throws Exception{
		logger.info("DELETE ACCOUNT");
		service.deleteAccount(busiNum);
	}

}
