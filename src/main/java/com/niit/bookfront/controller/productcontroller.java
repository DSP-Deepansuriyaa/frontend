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
import com.niit.ecombackend.DAO.Product_DAO;
import com.niit.ecombackend.DAO.Seller_DAO;
import com.niit.ecombackend.model.Product;
@Controller
public class productcontroller {
	@Autowired
	Category_DAO catdao;
	@Autowired
	Seller_DAO seldao;
	@Autowired
	Product_DAO prodao;
	@RequestMapping("/product")
	String productpage(Model m) {
		m.addAttribute("ShowMessage", false);
		m.addAttribute("DispMessage", "");
		m.addAttribute("catlist", catdao.selectAllCategory());
		m.addAttribute("sellist", seldao.selectAllSeller());
		m.addAttribute("productmodel", new Product());
		m.addAttribute("productpage", true);
		return "index";
		
		}
@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	String addProduct(@Valid @ModelAttribute("productmodel") Product p, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Plz Check Something went wrong");
				m.addAttribute("productmodel", p);
			} else {
				if (prodao.addProduct(p)) {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Successfully added");
					m.addAttribute("productmodel", new Product());
				} else {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Not Added");
					m.addAttribute("productmodel", p);
				}
			}
		} catch (Exception e) {
			if (e instanceof ConstraintViolationException) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Data Already exists");
				m.addAttribute("productmodel", p);
			} else {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Later");
				m.addAttribute("productmodel", p);
			}
		}
		m.addAttribute("catlist", catdao.selectAllCategory());
		m.addAttribute("sellist", seldao.selectAllSeller());
		m.addAttribute("productpage", true);
		return "index";
		}
		
@RequestMapping("/viewproduct")
String viewpropage(Model m) {
	m.addAttribute("productlist", prodao.selectAllProduct());

	m.addAttribute("viewproductpage", true);
	return "index";
}	
@RequestMapping("/deleteproduct")
String deletepropage(@RequestParam("proid") int id, Model m) {
	try {
		if (prodao.deleteProduct(prodao.selectOneProduct(id))) {
			
			m.addAttribute("ShowMessage", true);
			m.addAttribute("DispMessage", "DATA DELETED");
		} else {
			m.addAttribute("ShowMessage", true);
			m.addAttribute("DispMessage", "UNABLE TO DELETE");
		}
	} catch (Exception e) {
		m.addAttribute("ShowMessage", true);
		m.addAttribute("DispMessage", "UNABLE TO DELETE THE DATA");
	}
	m.addAttribute("productlist", prodao.selectAllProduct());
	m.addAttribute("viewproductpage", true);
	return "index";

}

	}
	

