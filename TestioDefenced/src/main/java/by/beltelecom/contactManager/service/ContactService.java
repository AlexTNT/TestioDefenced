package by.beltelecom.contactManager.service;

import java.util.List;
import  by.beltelecom.contactManager.domain.Contact;

public interface ContactService {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);
}