package site.jejutour.vo;

public class MemberVO {
	
	private String userid, gender, email, password;

	public MemberVO(String userid, String gender, String email, String password) {
		
		this.userid = userid;
		this.gender = gender;
		this.email = email;
		this.password = password;
	}

	public MemberVO() {
		
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", gender=" + gender + ", email=" + email + ", password=" + password + "]";
	}
	
	
	
}
