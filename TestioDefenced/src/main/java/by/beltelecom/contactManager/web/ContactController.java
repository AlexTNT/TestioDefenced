package by.beltelecom.contactManager.web;

import java.util.Map;

import by.beltelecom.contactManager.domain.Contact;
import by.beltelecom.contactManager.domain.MyTable;
import by.beltelecom.contactManager.service.ContactService;
import by.beltelecom.contactManager.service.MyTableService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value="contact")
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	@Autowired
	private MyTableService mtableService;
	

	@RequestMapping("/index")
	public String listContacts(Map<String, Object> map) {

		map.put("contact", new Contact());
		map.put("contactList", contactService.listContact());

		map.put("mtable", new MyTable());
		map.put("mtableList", mtableService.list());
		
		return "contact";
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/index";
	}

	@RequestMapping(value = "index/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact") Contact contact,
			BindingResult result) {

		contactService.addContact(contact);

		return "redirect:/index";
	}

	@RequestMapping("index/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId") Integer contactId) {

		contactService.removeContact(contactId);

		return "redirect:/index";
	}
}