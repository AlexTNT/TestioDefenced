package by.beltelecom.contactManager.dao;

import java.util.List;

import by.beltelecom.contactManager.domain.MyTable;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyTableDAOImpl implements MyTableDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public void add(MyTable mTable) {
		sessionFactory.getCurrentSession().save(mTable);
	}
	
	@SuppressWarnings("unchecked")
	public List<MyTable> list() {

		return sessionFactory.getCurrentSession().createQuery("from MyTable")
			.list();
	}

	public void remove(Integer id) {
		MyTable mTable = (MyTable) sessionFactory.getCurrentSession().load(
				MyTable.class, id);
		if (null != mTable) {
			sessionFactory.getCurrentSession().delete(mTable);
		}

	}
}