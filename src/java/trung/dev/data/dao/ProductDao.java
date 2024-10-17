package trung.dev.data.dao;

import java.util.List;

import trung.dev.data.model.Product;

public interface ProductDao {

    public int insert(Product product);

    public boolean update(Product product);

    public boolean delete(int id);

    public Product find(int id);

    public List<Product> findAll();

    public List<Product> hot(int limit);

    public List<Product> news(int limit);

    public List<Product> findByCategory(int id);

    public List<Product> findByName(String key);

    public List<Product> findByCategoryOfName(int categoryId, String key);

    public List<Product> filter(int categoryId, String propertyName, String order);

    public List<Product> relatedProductList(Product product);

    public List<Product> getProducts(int from, int amount);

    public boolean updateView(Product product);

    public List<Product> filter(int categoryId, String property, String order, int start, int PER_PAGE);

    public List<Product> filterShop(String propertyName, String order);
    
    public List<Product> findByOrderId(int id);
}
