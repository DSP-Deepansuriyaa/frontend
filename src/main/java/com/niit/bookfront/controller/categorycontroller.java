package com.niit.bookfront.controller;

import javax.validation.Valid;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ecombackend.DAO.Category_DAO;
import com.niit.ecombackend.model.Category;

@Controller
public class categorycontroller {
	@Autowired
	Category_DAO catdao;

	@RequestMapping("/category")
	String categorypage(Model m) {
		m.addAttribute("editmode", false);
		m.addAttribute("ShowMessage", false);
		m.addAttribute("DispMessage", "");
		m.addAttribute("categorymodel", new Category());
		m.addAttribute("categorypage", true);
		return "index";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	String addcategory(@Valid @ModelAttribute("categorymodel") Category c, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Plz Check Something went wrong");
				m.addAttribute("categorymodel", c);
			} else {
				if (catdao.addCategory(c)) {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Successfully added");
					m.addAttribute("categorymodel", new Category());
				} else {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Not Added");
					m.addAttribute("categorymodel", c);
				}
			}
		} catch (Exception e) {
			if (e instanceof ConstraintViolationException) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Data Already exists");
				m.addAttribute("categorymodel", c);
			} else {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Later");
				m.addAttribute("categorymodel", c);
			}
		}
		m.addAttribute("editmode", false);
		m.addAttribute("categorypage", true);
		return "index";
	}

	@RequestMapping("/viewcategory")
	String viewcategorypage(Model m) {
		m.addAttribute("categorylist", catdao.selectAllCategory());
		m.addAttribute("viewcategorypage", true);
		return "index";
	}


@RequestMapping("/deletecategory")
String deletecategory(@RequestParam("catid") int id, Model m) {
	try {
		if (catdao.deleteCategory(catdao.selectOneCategory(id))) {
			m.addAttribute("ShowMessage", true);
			m.addAttribute("DispMessage", "Data Deleted");

		} else {
			m.addAttribute("ShowMessage", true);
			m.addAttribute("DispMessage", "Unable to Delete Data");
		}
	}

	catch (Exception e) {
		m.addAttribute("ShowMessage", true);
		m.addAttribute("DispMessage", "Unable to Delete Data");
	}
	m.addAttribute("categorylist", catdao.selectAllCategory());
	m.addAttribute("viewcategorypage", true);
	return "index";
}
@RequestMapping("/editcategory")
String editcatpage(@RequestParam("catid")int id,Model m) {
	m.addAttribute("editmode", true);
	m.addAttribute("ShowMessage", false);
	m.addAttribute("DispMessage", "");
	m.addAttribute("categorymodel",catdao.selectOneCategory(id));
	m.addAttribute("categorypage", true);
	return "index";
}
@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
String updateCategory(@Valid @ModelAttribute("categorymodel") Category c, BindingResult br, Model m) {
	try {
		if (br.hasErrors()) {
			m.addAttribute("ShowMessage", true);
			m.addAttribute("DispMessage", "Pls Check Your Data");
			m.addAttribute("categorymodel", c);
			m.addAttribute("editmode", true);
		} else {
			if (catdao.updateCategory(c)) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Updated Successfuly");
				m.addAttribute("categorymodel", new Category());
				m.addAttribute("editmode", false);

			} else {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Data Not Added");
				m.addAttribute("categorymodel", c);
				m.addAttribute("editmode", true);

			}
		}
	} catch (Exception e) {
			m.addAttribute("ShowMessage", true);
			m.addAttribute("DispMessage", "Data Already Exists");
			m.addAttribute("categorymodel", c);
			m.addAttribute("editmode", true);
	}
	m.addAttribute("categorypage", true);
	return "index";
}
}

