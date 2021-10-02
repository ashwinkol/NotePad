package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.model.Data;
import com.mysql.cj.protocol.Resultset;
import com.mysql.jdbc.Driver;

public class noteDaoImpl implements noteDao {

	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	private ArrayList<Data> data;

	public noteDaoImpl() throws SQLException {

		com.mysql.cj.jdbc.Driver d = new com.mysql.cj.jdbc.Driver();
		DriverManager.registerDriver(d);

		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notepad", "admin", "password");

	}

	public void saveNotes(String title, String notes) throws SQLException {

		stmt = conn.prepareStatement("insert into notes(id,Title,Note) values('0',?,?)");
		stmt.setString(1, title);
		stmt.setString(2, notes);

		stmt.execute();

	}

	public List<Data> getNotes() throws SQLException {

		stmt = conn.prepareStatement("select * from notes");
		rs = stmt.executeQuery();

		this.data = new ArrayList<Data>();

		while (rs.next()) {
			Data d = new Data();
			d.setId(rs.getInt(1));
			d.setTitle(rs.getString(2));
			d.setNote(rs.getString(3));
			data.add(d);

		}

		return data;

	}
	
	public void deleteNote(int id) throws SQLException {
		
		stmt = conn.prepareStatement("delete from notes where id = ?");
		stmt.setInt(1, id);
		stmt.execute();
	}

	
	public Data getNoteData(int id) throws SQLException {
		
		stmt = conn.prepareStatement("select * from notes where id = ?");
		stmt.setInt(1, id);
		
		rs = stmt.executeQuery();
		Data d = null;
		while(rs.next()) {
			d  = new Data();
			d.setTitle(rs.getString(2));
			d.setNote(rs.getString(3));
		
		}
		
		return d;

		
	}
	
	public void updateNote(int id, String title, String note) throws SQLException {
		
		
		
		stmt = conn.prepareStatement("update notes set Title= ? ,Note= ? where id = ?");
		stmt.setString(1, title);
		stmt.setString(2, note);
		stmt.setInt(3, id);
		
		stmt.execute();
	}

}
