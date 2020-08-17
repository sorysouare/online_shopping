package net.kzn.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	
	private static List<Category> categories = new  ArrayList<>();
	
	static {
		
		Category category = new Category();
		
		//first category product
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is some description for Television");
		category.setImageURL("CAT_1.png");
		categories.add(category);
		
		//second category product
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is some description for Mobile");
		category.setImageURL("CAT_2.png");
		categories.add(category);
		
		//third  category product
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is some description for Laptop");
		category.setImageURL("CAT_3.png");
		categories.add(category);
		
	}
	
	@Override
	public java.util.List<Category> List() {

		return categories;
	}

	@Override
	public Category get(int id) {
		
		for (Category category : categories) {
			
			if (category.getId() == id) return category;
		}
		return null;
	}

}
