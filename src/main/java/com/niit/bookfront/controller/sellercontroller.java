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

import com.niit.ecombackend.DAO.Seller_DAO;
import com.niit.ecombackend.model.Seller;
@Controller
public class sellercontroller {
	@Autowired
	Seller_DAO seldao;
	
	@RequestMapping("/seller")
	String sellerpage(Model m) {
		m.addAttribute("editmode", false);
		m.addAttribute("ShowMessage", false);
		m.addAttribute("Dispmessage", "");
		m.addAttribute("sellermodel", new Seller());
		m.addAttribute("sellerpage", true);
		return "index";
		
	}
	@RequestMapping(value="/addseller",method=RequestMethod.POST)
	String addseller(@Valid @ModelAttribute("sellermodel") Seller s, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Plz Check Something went wrong");
				m.addAttribute("sellermodel", s);
			} else {
				if (seldao.addSeller(s)) {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Successfully added");
					m.addAttribute("sellermodel", new Seller());
				} else {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Not Added");
					m.addAttribute("sellermodel", s);
				}
			}
		} catch (Exception e) {
			if (e instanceof ConstraintViolationException) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Data Already exists");
				m.addAttribute("sellermodel", s);
			} else {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Later");
				m.addAttribute("sellermodel", s);
			}
		}
		m.addAttribute("editmode", false);
		m.addAttribute("sellerpage", true);
		return "index";
		
	}
	@RequestMapping("/viewseller")
	String viewsellerpage(Model m) {
		m.addAttribute("sellerlist", seldao.selectAllSeller());
        m.addAttribute("viewsellerpage", true);
		return "index";
	}
	@RequestMapping("/deleteseller")
	String deleteseller(@RequestParam("selid") int id, Model m) {
		try {
			if (seldao.deleteSeller(seldao.selectOneSeller(id))) {
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
		m.addAttribute("sellerlist", seldao.selectAllSeller());
		m.addAttribute("viewsellerpage", true);
		return "index";
}
	@RequestMapping("/editseller")
	String editcatpage(@RequestParam("selid")int id,Model m) {
		m.addAttribute("editmode", true);
		m.addAttribute("ShowMessage", false);
		m.addAttribute("DispMessage", "");
		m.addAttribute("sellermodel",seldao.selectOneSeller(id));
		m.addAttribute("sellerpage", true);
		return "index";
	}
	@RequestMapping(value = "/updateseller", method = RequestMethod.POST)
	String updateCategory(@Valid @ModelAttribute("sellermodel") Seller s, BindingResult br, Model m) {
		try {
			if (br.hasErrors()) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Pls Check Your Data");
				m.addAttribute("sellermodel", s);
				m.addAttribute("editmode", true);
			} else {
				if (seldao.updateSeller(s)) {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Added Successfuly");
					m.addAttribute("sellermodel", new Seller());
					m.addAttribute("editmode", false);

				} else {
					m.addAttribute("ShowMessage", true);
					m.addAttribute("DispMessage", "Data Not Added");
					m.addAttribute("sellermodel", s);
					m.addAttribute("editmode", true);

				}
			}
		} catch (Exception e) {
				m.addAttribute("ShowMessage", true);
				m.addAttribute("DispMessage", "Data Already Exists");
				m.addAttribute("sellermodel", s);
				m.addAttribute("editmode", true);
		}
		m.addAttribute("sellerpage", true);	
		return "index";
	}
}
