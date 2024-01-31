package dto;

public class MaterialVo {
	private int material_id;
	private int sup_id;
	private int input_id;
	private String material_nm;
	private int material_quantity;
	
	public int getMaterial_id() {
		return material_id;
	}
	public void setMaterial_id(int material_id) {
		this.material_id = material_id;
	}
	public int getSup_id() {
		return sup_id;
	}
	public void setSup_id(int sup_id) {
		this.sup_id = sup_id;
	}
	public int getInput_id() {
		return input_id;
	}
	public void setInput_id(int input_id) {
		this.input_id = input_id;
	}
	public String getMaterial_nm() {
		return material_nm;
	}
	public void setMaterial_nm(String material_nm) {
		this.material_nm = material_nm;
	}
	public int getMaterial_quantity() {
		return material_quantity;
	}
	public void setMaterial_quantity(int material_quantity) {
		this.material_quantity = material_quantity;
	}
	
	
}
