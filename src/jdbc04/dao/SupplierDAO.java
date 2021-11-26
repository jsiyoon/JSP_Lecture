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

		try (Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(sql);) {
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

	public boolean insert(Connection con, Supplier supplier) {
		String sql = "INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country, Phone)"
				+ "   VALUE(?,?,?,?,?,?,?)";
		int rowCount = 0;
		try(PreparedStatement stmt = con.prepareStatement(sql);){
			stmt.setString(1, supplier.getSupplierName());
			stmt.setString(2, supplier.getContactName());
			stmt.setString(3, supplier.getAddress());
			stmt.setString(4, supplier.getCity());
			stmt.setString(5, supplier.getPostalCode());
			stmt.setString(6, supplier.getCountry());
			stmt.setString(7, supplier.getPhone());
			rowCount = stmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount == 1;
	}

	public boolean update(Connection con, Supplier supplier) {
		String sql = "UPDATE Suppliers " + 
				"SET " + 
				"	 SupplierName = ?, " + 
				"    ContactName = ?, " + 
				"    Address = ?, " + 
				"    City = ?, " + 
				"	 PostalCode = ?, " + 
				"    Country = ?, " + 
				"    Phone = ? " + 
				"WHERE " + 
				"	SupplierID = ?";
		int rowCount = 0;
		
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			int i = 1;
			stmt.setString(i++, supplier.getSupplierName());
			stmt.setString(i++, supplier.getContactName());
			stmt.setString(i++, supplier.getAddress());
			stmt.setString(i++, supplier.getCity());
			stmt.setString(i++, supplier.getPostalCode());
			stmt.setString(i++, supplier.getCountry());
			stmt.setString(i++, supplier.getPhone());
			stmt.setInt(i++, supplier.getSupplierID());
			
			rowCount = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount == 1;
	}

	public boolean deleteById(Connection con, int supplierID) {
		String sql = "DELETE FROM Suppliers"
				+ "	  WHERE SupplierID = ?";
		try(PreparedStatement stmt = con.prepareStatement(sql)){
			stmt.setInt(1, supplierID);
			
			int count = stmt.executeUpdate();
			
			return count == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Supplier selectById(Connection con, int supplierID) {
		String sql = "SELECT SupplierName, ContactName, Address, City, PostalCode, Country, Phone "
				+ "   FROM Suppliers "
				+ "   WHERE SupplierID = ?";
		Supplier supplier = new Supplier();
		
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, supplierID);
			try(ResultSet rs = stmt.executeQuery()) {
				if(rs.next()) {
					String supplierName = rs.getString("supplierName");
					String contactName = rs.getString("contactName");
					String address = rs.getString("address");
					String city = rs.getString("city");
					String postalCode = rs.getString("postalCode");
					String country = rs.getString("country");
					String phone = rs.getString("phone");

					supplier.setSupplierID(supplierID);
					supplier.setSupplierName(supplierName);
					supplier.setContactName(contactName);
					supplier.setAddress(address);
					supplier.setCity(city);
					supplier.setPostalCode(postalCode);
					supplier.setCountry(country);
					supplier.setPhone(phone);
					
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return supplier;
	}

}
