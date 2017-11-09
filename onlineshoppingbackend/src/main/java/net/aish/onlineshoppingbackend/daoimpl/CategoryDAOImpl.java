package net.aish.onlineshoppingbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.aish.onlineshoppingbackend.dao.CategoryDAO;
import net.aish.onlineshoppingbackend.dto.Category;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	

	/*
	 * private static List<Category> categories = new ArrayList<Category>();
	 * 
	 * static {
	 * 
	 * Category category = new Category(); category.setId(1);
	 * category.setName("Television"); category.setImageURL("CAT_1.png");
	 * category.setDescription("this is the first category...");
	 * 
	 * categories.add(category);
	 * 
	 * category = new Category(); category.setId(2); category.setName("Mobile");
	 * category.setImageURL("CAT_2.png");
	 * category.setDescription("this is the second category...");
	 * 
	 * categories.add(category);
	 * 
	 * category = new Category(); category.setId(3);
	 * category.setName("Clothing"); category.setImageURL("CAT_3.png");
	 * category.setDescription("this is the third category...");
	 * 
	 * categories.add(category); }
	 */

	@Override
	public List<Category> list() {
		
		String selectActiveCategory = "FROM Category WHERE active =:active";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		query.setParameter("active", true);

		return query.getResultList();
	}

	// getting single category based on id
	@Override
	public Category get(int id) {

		/*
		 * for (Category category : categories) { if (category.getId() == id)
		 * return category; }
		 */

		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	@Override
	public boolean add(Category category) {

		try {
			// add category to database
			sessionFactory.getCurrentSession().persist(category);

			return true;
		}

		catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	// updating a single category
	@Override
	public boolean update(Category category) {

		try {

			sessionFactory.getCurrentSession().update(category);

			return true;
		}

		catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Category category) {

		category.setActive(false);

		try {

			sessionFactory.getCurrentSession().update(category);

			return true;
		}

		catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
