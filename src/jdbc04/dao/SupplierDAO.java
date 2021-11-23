package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Supplier;

public class SupplierDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();

		String sql = "SELECT DISTINCT Country FROM Suppliers ORDER BY Country";

		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(sql);) {
			while (rs.next()) {
				list.add(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Supplier> getSupplierList(Connection con, String country) {
		List<Supplier> list = new ArrayList<Supplier>();
		
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone "
				+ "FROM Suppliers WHERE Country = ?";
		
		try (PreparedStatement stmt = con.prepareStatement(sql);) {
			
			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					Supplier bean = new Supplier();
					int i = 1;
					
					bean.setSupplierID(rs.getInt(i++));
					bean.setSupplierName(rs.getString(i++));
					bean.setContactName(rs.getString(i++));
					bean.setAddress(rs.getString(i++));
					bean.setCity(rs.getString(i++));
					bean.setPostalCode(rs.getString(i++));
					bean.setCountry(rs.getString(i++));
					bean.setPhone(rs.getString(i++));
					
					list.add(bean);
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}	 	
	return list;
	}

}
