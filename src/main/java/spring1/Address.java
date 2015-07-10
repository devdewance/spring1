package spring1;

public class Address
{
	private int zip;
	private String city;
	private String state ;
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Address [zip=" + zip + ", city=" + city + ", state=" + state + "]";
	}
	
	

}
