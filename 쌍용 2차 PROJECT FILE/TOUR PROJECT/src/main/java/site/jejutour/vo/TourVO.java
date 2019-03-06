package site.jejutour.vo;

public class TourVO {
	private int tour_idx, price;
	
	private String tour_name, tour_address, tour_phone, div_name, tour_caption;
	
	public TourVO() {
		
	}
	public TourVO(int tour_idx, String tour_name, String tour_address, String tour_phone, String div_name, String tour_caption) {
		this.tour_idx = tour_idx;
		this.tour_name = tour_name;
		this.tour_address = tour_address;
		this.div_name = div_name;
		this.tour_phone = tour_phone;
		this.tour_caption =  tour_caption;
	}
	public int getTour_idx() {
		return tour_idx;
	}
	public void setTour_idx(int idx) {
		this.tour_idx = idx;
	}
	public String getTour_name() {
		return tour_name;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public String getTour_address() {
		return tour_address;
	}
	public void setTour_address(String tour_address) {
		this.tour_address = tour_address;
	}
	public String getDiv_name() {
		return div_name;
	}
	public String getTour_phone() {
		return tour_phone;
	}
	public void setTour_phone(String tour_phone) {
		this.tour_phone = tour_phone;
	}
	public void setDiv_name(String div_name) {
		this.div_name = div_name;
	}
	public String getTour_caption() {
		return tour_caption;
	}
	public void setTour_caption(String tour_caption) {
		this.tour_caption = tour_caption;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "TourVO [tour_idx=" + tour_idx + ", price=" + price + ", tour_name=" + tour_name + ", tour_address="
				+ tour_address + ", tour_phone=" + tour_phone + ", div_name=" + div_name + ", tour_caption="
				+ tour_caption + "]";
	}
	
}
