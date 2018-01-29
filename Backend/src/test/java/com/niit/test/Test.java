package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.BillingaddressDao;
import com.niit.dao.CartDao;
import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.RoleDao;
import com.niit.dao.ShippingaddressDao;
import com.niit.dao.SupplierDao;
import com.niit.dao.UserDao;
import com.niit.dao.WishlistDao;
import com.niit.model.User;
import com.niit.model.Wishlist;
import com.niit.model.Billingaddress;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Role;
import com.niit.model.Shippingaddress;
import com.niit.model.Supplier;

public class Test {


	public static void main (String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		UserDao userDao = (UserDao) context.getBean("UserDao");
		RoleDao roleDao = (RoleDao) context.getBean("RoleDao");
		ProductDao productDao = (ProductDao) context.getBean("ProductDao");
		SupplierDao supplierDao = (SupplierDao) context.getBean("SupplierDao");
		CategoryDao categoryDao = (CategoryDao) context.getBean("CategoryDao");
		ShippingaddressDao shippingaddressDao = (ShippingaddressDao) context.getBean("ShippingaddressDao");
		BillingaddressDao billingaddressDao = (BillingaddressDao) context.getBean("BillingaddressDao");
		CartDao cartDao = (CartDao) context.getBean("CartDao");
		WishlistDao wishlistDao = (WishlistDao) context.getBean("WishlistDao");
		
		User user = (User) context.getBean("user");
		Role role = (Role) context.getBean("role");
		Product product = (Product) context.getBean("product");
		Supplier supplier = (Supplier) context.getBean("supplier");
		Category category = (Category) context.getBean("category");
		Shippingaddress shippingaddress = (Shippingaddress) context.getBean("shippingaddress");
		Billingaddress billingaddress = (Billingaddress) context.getBean("billingaddress");
		Cart cart = (Cart) context.getBean("cart");
		Wishlist wishlist = (Wishlist) context.getBean("wishlist");
		
		
		user.setUname("");
		user.setEmail("");
		user.setPwd("");
		
		user.setMnum("");
		user.setAddress("");
		user.setPincode("");

		role.setUname("");
		role.setEmail("");
		role.setMnum("");
		
		user.setRole(role);
		role.setUser(user);
		
		userDao.saveOrUpdate(user);
		roleDao.saveOrUpdate(role);
		product.setProductName("");
		productDao.saveOrUpdate(product);
		supplier.setSupplierName("");
		supplier.setContactNumber(87968764);
		supplierDao.saveOrUpdate(supplier);
category.setCategoryName("");
		
		categoryDao.saveOrUpdate(category);
		shippingaddress.setAddress("");
		shippingaddress.setUserName("");
		shippingaddressDao.saveOrUpdate(shippingaddress);
		billingaddress.setAddress("");
		billingaddress.setContactNumber(897465);
		billingaddressDao.saveOrUpdate(billingaddress);
		cart.setProductName("");
		cartDao.saveOrUpdate(cart);
				
	}
}