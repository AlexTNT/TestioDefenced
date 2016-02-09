package by.beltelecom.contactManager.web;

import java.util.Map;


import by.beltelecom.contactManager.domain.MyTable;
import by.beltelecom.contactManager.service.MyTableService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value="indox")
public class mtablosController {

	@Autowired
	private MyTableService mtableService;

	@RequestMapping("/indox")
	public String listContacts(Map<String, Object> map) {
		map.put("mtable", new MyTable());
		map.put("mtableList", mtableService.list());
		
		return "mtablos";
	}

	@RequestMapping(value = "/indox/add", method = RequestMethod.POST)
	public String add( @ModelAttribute("mtable") MyTable mtable,
			BindingResult result) {

		mtableService.add(mtable);

		return "redirect:/indox";
	}

	@RequestMapping("/indox/delete/{Id}")
	public String delete(@PathVariable("Id") Integer Id) {

		mtableService.remove(Id);

		return "redirect:/indox";
	}
}