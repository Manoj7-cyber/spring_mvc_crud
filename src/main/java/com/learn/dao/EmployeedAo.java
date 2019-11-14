package com.learn.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.learn.Employee;

public class EmployeedAo {

	private JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public int save(Employee emp) {
		String sql = "insert into employee(name,salary,desgination) values('"+emp.getName()+"','"+emp.getSalary()+"','"+emp.getDesgination()+"')";
		return template.update(sql);
	}
	public int update(Employee emp) {
		String sql = "update employee set name='"+emp.getName()+"',salary='"+emp.getSalary()+"',desgination='"+emp.getDesgination()+"' where id="+emp.getId()+"";
		return template.update(sql);
	}
	public int delete(int id) {
		String sql = "delete from employee where id="+id+"";
		return template.update(sql);
	}
	public Employee getByID(int id) {
		String sql = "select * from employee where id=?";
		return  template.queryForObject(sql, new Object[] {id},new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	public List<Employee> getAll(){
		String query = "select * from employee";
		return template.query(query, new RowMapper<Employee>() {

			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Employee emp = new Employee();
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setSalary(rs.getFloat(3));
				emp.setDesgination(rs.getString(4));
				return emp;
			}
			
		});
	}
	
}
