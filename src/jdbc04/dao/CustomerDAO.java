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

}
