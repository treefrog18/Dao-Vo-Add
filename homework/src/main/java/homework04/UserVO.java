package homework04;

public class UserVO {

	private String name;
	private String sex;
	private String birthYear;
	private String job;
	private String phoneNumber;
	private boolean active;
	
	public UserVO(){
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	public String toString() {
		return "UserVO [active="+active+", name="+name+", sex="+sex+", birthYear="
				+birthYear+", job="+job+", phoneNumber="+phoneNumber+"]";
	}
}
