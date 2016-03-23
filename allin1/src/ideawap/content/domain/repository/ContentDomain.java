package ideawap.content.domain.repository;

import ideawap.content.utility.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ContentDomain {

	Session session;

	public List<Object[]> getListbylimit(String query,int limit){
		
		session = HibernateUtil.getSessionFactory().getCurrentSession();
/*		session = HibernateUtil.getSessionFactory().openSession();
*/		
		List<Object[]> ls_ob = new ArrayList<Object[]>();
		
		Transaction tx = null;
	
		try {
			tx = session.beginTransaction();

		Query q = session.createQuery(query);
         q.setMaxResults(limit);
		ls_ob  = (List<Object[]>)q.list();

	}catch (HibernateException ex) {
		if (tx != null) {
			System.out.println("Exception in getList method " + ex);
			
			  tx.rollback(); 
			  ex.printStackTrace();
			 
		}
		System.out.println("Exception getList tx open" + ex);
	} finally {
		session.close();
	}
		
		return ls_ob;
	}
	
	
	
	
	
	
public List<String> getListForSingleColumn(String query){
		
	session = HibernateUtil.getSessionFactory().getCurrentSession();
	/*	session = HibernateUtil.getSessionFactory().openSession();*/
		
		List<String> ls_ob = new ArrayList<String>();
		
		Transaction tx = null;
	
		try {
			tx = session.beginTransaction();

		Query q = session.createQuery(query);
         
		ls_ob  = q.list();

	}catch (HibernateException ex) {
		if (tx != null) {
			System.out.println("Exception in getList method " + ex);
			
			  tx.rollback(); 
			  ex.printStackTrace();
			 
		}
		System.out.println("Exception getList tx open" + ex);
	} finally {
		session.close();
	}
		
		return ls_ob;
	}
	
	
	
}
