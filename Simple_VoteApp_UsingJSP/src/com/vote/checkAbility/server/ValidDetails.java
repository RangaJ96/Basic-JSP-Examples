package com.vote.checkAbility.server;

public class ValidDetails {

	public static String ageValidation(int age){
		String elig="yes";
		if(age>=18){
			elig="yes";
		}
		else if(age<18){
			elig="no";
		}
		else{
		}
		return elig;
	}
	
	public static String checkCitizenshipCheck(String i){
		String dec="yes";
		if (i==null){
			return dec;
		}
		else{
			dec="no";
			return dec;
		}
	}
	
	public static String checkCountry(String x){
		String dec="yes";
		if (x=="Sri Lanka"){
			return dec;
		}
		else{
			dec="no";
			return dec;
		}
	}
}
