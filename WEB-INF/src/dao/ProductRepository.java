package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository() {
        Product phone = new Product("p1234", "iphone 6s", 800000);
        phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setCondition("NEW");
        
        listOfProducts.add(phone);
        
    }
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
}