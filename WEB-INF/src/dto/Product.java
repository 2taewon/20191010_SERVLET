package dto; 
import java.io.Serializable;

public class Product implements Serializable { // 인터페이스 구현, 키워드(implements)
    private static final long serialVersionUID = -4274700572038677000L; // 객체를 다시 불러오기 위한 고유번호 UID 
    
    private String productId;
    private String pname;
    private Integer unitPrice;
    private String description;
    private String manufacturer;  // 멤버변수들 전부 private 선언 데이터 은닉화
    private String category;
    private long unitsInStock;
    private String condition;
    
    public Product() {
    	super();
    }
    
    public Product(String productId, String pname, Integer unitPrice) {
        this.productId = productId;
        this.pname = pname;
        this.unitPrice = unitPrice;
    }
    public String getProductId(){ // get은 반환해줌, set은 
        return productId;
    }
    public String getPname() {
        return pname;
    }
    public void setPname(String pname){
        this.pname = pname;
    }
    public void setProductId(String productId){
        this.productId = productId;
    }
    public Integer getUnitPrice(){
        return unitPrice;
    }
    public void setUnitPrice(Integer unitPrice){
        this.unitPrice = unitPrice;
    }
    public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }
    public String getManufacturer(){
        return manufacturer;
    }
    public void setManufacturer(String manufacturer){
        this.manufacturer = manufacturer;
    }
    public String getCategory(){
        return category;
    }
    public void setCategory(String category){
        this.category = category;
    }
    public long getUnitsInStock(){
        return unitsInStock;
    }
    public void setUnitsInStock(long unitsInStock){
        this.unitsInStock = unitsInStock;
    }
    public String getCondition(){
        return condition;
    }
    public void setCondition(String condition){
        this.condition = condition;
    }
}
