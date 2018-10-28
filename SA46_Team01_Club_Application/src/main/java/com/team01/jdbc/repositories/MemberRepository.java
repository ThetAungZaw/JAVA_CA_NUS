package com.team01.jdbc.repositories;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.team01.jdbc.dao.DAO;

public class MemberRepository {
	public static ArrayList<HashMap> findByemailAndPassword(String email, String password) throws ClassNotFoundException, SQLException{
		String sqlStt = String.format("SELECT * FROM Member WHERE Email = '%s' AND UserPassword = '%s'", email.toString(), password);
		return DAO.factoryCreate().Query(sqlStt);
	}
}
