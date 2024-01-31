package dto;

public class ContractVo {
	private int contract_id;
	private String contract_date;
	private String fixed_date;
	private int product_id;
	private int contract_quantity;
	private String release_id;
	private String warehousing_date;
	private int cust_id;
	private String paymeny_status;
	
	public int getContract_id() {
		return contract_id;
	}
	public void setContract_id(int contract_id) {
		this.contract_id = contract_id;
	}
	public String getContract_date() {
		return contract_date;
	}
	public void setContract_date(String contract_date) {
		this.contract_date = contract_date;
	}
	public String getFixed_date() {
		return fixed_date;
	}
	public void setFixed_date(String fixed_date) {
		this.fixed_date = fixed_date;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getContract_quantity() {
		return contract_quantity;
	}
	public void setContract_quantity(int contract_quantity) {
		this.contract_quantity = contract_quantity;
	}
	public String getRelease_id() {
		return release_id;
	}
	public void setRelease_id(String release_id) {
		this.release_id = release_id;
	}
	public String getWarehousing_date() {
		return warehousing_date;
	}
	public void setWarehousing_date(String warehousing_date) {
		this.warehousing_date = warehousing_date;
	}
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	public String getPaymeny_status() {
		return paymeny_status;
	}
	public void setPaymeny_status(String paymeny_status) {
		this.paymeny_status = paymeny_status;
	}
	
	
}
