package by.beltelecom.contactManager.service;

import java.util.List;
import  by.beltelecom.contactManager.domain.MyTable;

public interface MyTableService {

	public void add(MyTable mTable);

	public List<MyTable> list();

	public void remove(Integer id);
}