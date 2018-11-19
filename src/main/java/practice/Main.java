package practice;

	import java.util.List;

	import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.hibernate.Transaction;
	import org.hibernate.cfg.Configuration;

import com.teamsankya.shoppingcart.dao.ShoppingDaoImpl;
import com.teamsankya.shoppingcart.dto.Category;
import com.teamsankya.shoppingcart.dto.Details;
import com.teamsankya.shoppingcart.dto.DetailsId;
import com.teamsankya.shoppingcart.dto.Products;



	public class Main {

		public static void main(String[] args) {
			/*Configuration config = new Configuration();
			SessionFactory factory = config.configure().buildSessionFactory();
			Session session = factory.openSession();
			
			Category bean = new Category();
			bean.setCatId("4");
			bean.setCatName("AAA");
			
			
			Products pbean = new Products();
			pbean.setCatId(bean);
			pbean.setId("1");
			pbean.setName("pen");
			
			DetailsId detailsId = new DetailsId();
			detailsId.setBean(pbean);
			detailsId.setId("1");
			
			Details dbean = new Details();
			dbean.setBean(pbean);
			dbean.setFullName("cello pen");
			dbean.setId(detailsId);
			dbean.setPrice(30);
			dbean.setSpecification("ball point pen");
			dbean.setCatBean(bean);
			session.save(bean);
			session.save(pbean);
			session.save(dbean);
			
			
			
			Transaction transaction = session.getTransaction();
			transaction.begin();
			transaction.commit();
			session.close();
	*/
			
			/*ShoppingDaoImpl daoImpl = new ShoppingDaoImpl();
			List<Details> data = daoImpl.search("pen");
			System.out.println(data);
			for (Details detailsBean : data) {
				System.out.println(detailsBean);*/
			
			ShoppingDaoImpl daoImpl = new ShoppingDaoImpl();
			List<Details> data = daoImpl.findProduct("pen");
			System.out.println(data);
			for (Details detailsBean : data) {
				System.out.println(detailsBean);
				
			}
			
		}
	
	}


