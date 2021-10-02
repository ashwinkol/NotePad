package com.controller;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.noteDao;
import com.dao.noteDaoImpl;
import com.model.User;

@Controller
public class theController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("loginPage")
	public String theLogin() {
		return "userLogin";
	}

	@RequestMapping("/loginCheck")
	public String theLoginCheck(@ModelAttribute("user") User u) {

		if (u.getId().equals("user") && u.getPassword().equals("password")) {
			return "notePad";
		}

		else {
			return "wrongPass";
		}

	}

	@RequestMapping("/saveNotes")
	public String saveTheNotes(HttpServletRequest req) throws SQLException {

		String title = req.getParameter("title");
		String note = req.getParameter("note");

		noteDaoImpl d = new noteDaoImpl();
		d.saveNotes(title, note);


		return "notePad";
	}

	@RequestMapping("/deleteNote")
	public String deleteNote(HttpServletRequest req) throws SQLException {
		int id = Integer.valueOf(req.getParameter("id"));
		noteDao d = new noteDaoImpl();
		d.deleteNote(id);

		return "viewAllNotes";

	}

	@RequestMapping("/editNote")
	public String editNote(HttpServletRequest req) throws SQLException {

		return "editNote";

	}

	@RequestMapping("/updateNote")
	public String updateNote(HttpServletRequest req) throws SQLException {
		int id = Integer.valueOf(req.getParameter("id"));
		String title = req.getParameter("title");
		String note = req.getParameter("note");
		
		System.out.println(id);
		System.out.println(title);
		System.out.println(note);
		
		noteDao d = new noteDaoImpl();
		d.updateNote(id,title,note);
		
		return "redirect:/viewAllNotes";
	}

	@RequestMapping("/viewAllNotes")
	public String viewAllNotes() {

		return "viewAllNotes";
	}

	@RequestMapping("logOut")
	public String theLogOut() {
		return "index";
	}
}
