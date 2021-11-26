package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Customer;

public class CustomerDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();
		String sql1 = "SELECT DISTINCT country FROM Customers ORDER BY country";
		try (
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql1);) {
			while (rs.next()) {
				list.add(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Customer> getCustomerList(Connection con, String country) {
		List<Customer> list = new ArrayList<Customer>();
		String sql2 = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ "FROM Customers WHERE Country = ?";
		try (PreparedStatement stmt = con.prepareStatement(sql2);) {

			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					Customer cus = new Customer();
					int i = 1;

					cus.setCustomerID(rs.getInt(i++));
					cus.setCustomerName(rs.getString(i++));
					cus.setContactName(rs.getString(i++));
					cus.setAddress(rs.getString(i++));
					cus.setCity(rs.getString(i++));
					cus.setPostalCode(rs.getString(i++));
					cus.setCountry(rs.getString(i++));

					list.add(cus);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean insert(Connection con, Customer customer) {
		String sql = "INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)"
				+"    VALUES(?,?,?,?,?,?)";
		int rowCount = 0;
		try(PreparedStatement stmt = con.prepareStatement(sql)){
			stmt.setString(1, customer.getCustomerName());
			stmt.setString(2, customer.getContactName());
			stmt.setString(3, customer.getAddress());
			stmt.setString(4, customer.getCity());
			stmt.setString(5, customer.getPostalCode());
			stmt.setString(6, customer.getCountry());
			
			rowCount =stmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount == 1;
	}

	public boolean update(Connection con, Customer customer) {
		String sql = "UPDATE Customers " + 
				"SET  " + 
				"	CustomerName = ?, " + 
				"    ContactName = ?, " + 
				"    Address = ?, " + 
				"    City = ?, " + 
				"    PostalCode = ?, " + 
				"    Country = ? " + 
				"WHERE " + 
				"    CustomerID = ? ";
		int rowCount = 0;
		
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			int i = 1;
			stmt.setString(i++, customer.getCustomerName());
			stmt.setString(i++, customer.getContactName());
			stmt.setString(i++, customer.getAddress());
			stmt.setString(i++, customer.getCity());
			stmt.setString(i++, customer.getPostalCode());
			stmt.setString(i++, customer.getCountry());
			stmt.setInt(i++, customer.getCustomerID());
			
			rowCount = stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount == 1;
	}

	public Customer selectById(Connection con, int customerID) {
		String sql = "SELECT CustomerName, ContactName, Address, City, "
				+ "			 PostalCode, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ?";
		
		Customer customer = new Customer();
		
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, customerID);
			
			try(ResultSet rs = stmt.executeQuery()) {
				if(rs.next()) {
					String customerName = rs.getString("customerName");
					String contactName = rs.getString("contactName");
					String address = rs.getString("address");
					String city = rs.getString("city");
					String postalCode = rs.getString("postalCode");
					String country = rs.getString("country");
					
					customer.setCustomerID(customerID);
					customer.setCustomerName(customerName);
					customer.setContactName(contactName);
					customer.setAddress(address);
					customer.setCity(city);
					customer.setPostalCode(postalCode);
					customer.setCountry(country);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customer;
	}

	public boolean deleteById(Connection con, int customerID) {
		String sql = "DELETE FROM Customers"
				+ "	  WHERE CustomerID = ?";
		
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, customerID);
			
			int count = stmt.executeUpdate();
			
			return count == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
