package jdbc11.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jdbc11.bean.Bank;

public class BankDao {

	public Bank getBankById(Connection con, int id) {
		String sql = "SELECT id, money FROM mytable29Bank WHERE id = ?";
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, id);
			try(ResultSet rs = stmt.executeQuery()) {
				if(rs.next()) {
					Bank bank = new Bank();
					
					bank.setId(id);
					bank.setMoney(rs.getInt("money"));
					
					return bank;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void update(Connection con, Bank bank) {
		String sql = "UPDATE mytable29Bank "
				+ "SET money = ? "
				+ "WHERE id = ?";
		try(PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, bank.getMoney());
			stmt.setInt(2, bank.getId());
			
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
