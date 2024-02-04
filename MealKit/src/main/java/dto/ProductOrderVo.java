package dto;

public class ProductOrderVo {
	private int lot_id;
	private int product_id;
	private int lot_size;
	private int output;
	private String production_date;
	private String receipt_date;
	
	
	public int getLot_id() {
		return lot_id;
	}
	public void setLot_id(int lot_id) {
		this.lot_id = lot_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getLot_size() {
		return lot_size;
	}
	public void setLot_size(int lot_size) {
		this.lot_size = lot_size;
	}
	public int getOutput() {
		return output;
	}
	public void setOutput(int output) {
		this.output = output;
	}
	public String getProduction_date() {
		return production_date;
	}
	public void setProduction_date(String production_date) {
		this.production_date = production_date;
	}
	public String getReceipt_date() {
		return receipt_date;
	}
	public void setReceipt_date(String receipt_date) {
		this.receipt_date = receipt_date;
	}
	
	
	
}
