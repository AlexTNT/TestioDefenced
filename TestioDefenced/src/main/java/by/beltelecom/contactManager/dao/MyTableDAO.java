package by.beltelecom.contactManager.dao;

import java.util.List;
import by.beltelecom.contactManager.domain.MyTable;

public interface MyTableDAO {

	public void add(MyTable mTable);

	public List<MyTable> list();

	public void remove(Integer id);
}