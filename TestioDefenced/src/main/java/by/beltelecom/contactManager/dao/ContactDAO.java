package by.beltelecom.contactManager.dao;

import java.util.List;
import by.beltelecom.contactManager.domain.Contact;

public interface ContactDAO {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);
}