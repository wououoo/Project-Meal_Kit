package dto;

public class BomVo {
	private int bom_id;
	private int product_id;
	private int material_id;
	private int material_quantity;
	
	
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
	public int getMaterial_quantity() {
		return material_quantity;
	}
	public void setMaterial_quantity(int material_quantity) {
		this.material_quantity = material_quantity;
	}
	
	
}
