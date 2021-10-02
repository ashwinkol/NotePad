package com.dao;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.model.Data;

public interface noteDao {

	public void saveNotes(String title, String notes) throws SQLException;
	public List<Data> getNotes() throws SQLException;
	public void deleteNote(int id) throws SQLException;
	public Data getNoteData(int id) throws SQLException;
	public void updateNote(int id, String title, String note) throws SQLException;

}
