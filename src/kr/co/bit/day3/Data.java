package kr.co.bit.day3;

public class Data {

	private String num;
	private String email;
	private String korean;
	private String English;
	private String math;
	private String science;
	private String society;
	
	private String score;
	private String tcode;
	private String ach;
	private String acode;
	public Data(String num, String email, String korean, String english, String math, String science, String society,
			String score, String tcode, String ach, String acode) {
		super();
		this.num = num;
		this.email = email;
		this.korean = korean;
		English = english;
		this.math = math;
		this.science = science;
		this.society = society;
		this.score = score;
		this.tcode = tcode;
		this.ach = ach;
		this.acode = acode;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKorean() {
		return korean;
	}
	public void setKorean(String korean) {
		this.korean = korean;
	}
	public String getEnglish() {
		return English;
	}
	public void setEnglish(String english) {
		English = english;
	}
	public String getMath() {
		return math;
	}
	public void setMath(String math) {
		this.math = math;
	}
	public String getScience() {
		return science;
	}
	public void setScience(String science) {
		this.science = science;
	}
	public String getSociety() {
		return society;
	}
	public void setSociety(String society) {
		this.society = society;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getTcode() {
		return tcode;
	}
	public void setTcode(String tcode) {
		this.tcode = tcode;
	}
	public String getAch() {
		return ach;
	}
	public void setAch(String ach) {
		this.ach = ach;
	}
	public String getAcode() {
		return acode;
	}
	public void setAcode(String acode) {
		this.acode = acode;
	}
	
	
}
