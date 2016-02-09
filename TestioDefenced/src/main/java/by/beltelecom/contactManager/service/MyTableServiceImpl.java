package by.beltelecom.contactManager.service;


import by.beltelecom.contactManager.dao.MyTableDAO;
import by.beltelecom.contactManager.domain.MyTable;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
public class MyTableServiceImpl implements MyTableService {
 
    @Autowired
    private MyTableDAO mtableDAO;
 
    @Transactional
    public void add(MyTable mTable) {
        mtableDAO.add(mTable);
    }
 
    @Transactional
    public List<MyTable> list() {
 
        return mtableDAO.list();
    }
 
    @Transactional
    public void remove(Integer id) {
        mtableDAO.remove(id);
    }
}