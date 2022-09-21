package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository() {
        Product phone = new Product("p1234", "iphone 6s", 800000);
        Phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        Phone.setCategory("Smart Phone");
        Phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        Phone.setCondition("NEW");
        
        listOfProducts.add(phone);
        
    }
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
}