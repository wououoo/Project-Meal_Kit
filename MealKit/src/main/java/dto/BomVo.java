package dto;

public class BomVo {
	private int bom_id;
	private int product_id;
	private int material_id;
	private int lot_id;
	private int bom_prod_quantity;
	private String quantity_units;
	
	
	public int getBom_id() {
		return bom_id;
	}
	public void setBom_id(int bom_id) {
		this.bom_id = bom_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getMaterial_id() {
		return material_id;
	}
	public void setMaterial_id(int material_id) {
		this.material_id = material_id;
	}
	public int getLot_id() {
		return lot_id;
	}
	public void setLot_id(int lot_id) {
		this.lot_id = lot_id;
	}
	public int getBom_prod_quantity() {
		return bom_prod_quantity;
	}
	public void setBom_prod_quantity(int bom_prod_quantity) {
		this.bom_prod_quantity = bom_prod_quantity;
	}
	public String getQuantity_units() {
		return quantity_units;
	}
	public void setQuantity_units(String quantity_units) {
		this.quantity_units = quantity_units;
	}
	
	
}
