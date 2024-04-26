package com.test.www.vo;

public class CountryVO {

	private String COUNTRY_ENG;
	private String COUNTRY_KOR;
	
	private String CountryType;
	private String CountryKeyword;
	public String getCOUNTRY_ENG() {
		return COUNTRY_ENG;
	}
	public void setCOUNTRY_ENG(String cOUNTRY_ENG) {
		COUNTRY_ENG = cOUNTRY_ENG;
	}
	public String getCOUNTRY_KOR() {
		return COUNTRY_KOR;
	}
	public void setCOUNTRY_KOR(String cOUNTRY_KOR) {
		COUNTRY_KOR = cOUNTRY_KOR;
	}
	public String getCountryType() {
		return CountryType;
	}
	public void setCountryType(String countryType) {
		CountryType = countryType;
	}
	public String getCountryKeyword() {
		return CountryKeyword;
	}
	public void setCountryKeyword(String countryKeyword) {
		CountryKeyword = countryKeyword;
	}
	@Override
	public String toString() {
		return "CountryVO [COUNTRY_ENG=" + COUNTRY_ENG + ", COUNTRY_KOR=" + COUNTRY_KOR + ", CountryType=" + CountryType
				+ ", CountryKeyword=" + CountryKeyword + "]";
	}

	
}