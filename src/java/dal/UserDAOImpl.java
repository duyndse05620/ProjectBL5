/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import dal.UserDAO;
import model.CateField;
import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import dal.DBContext;
import dal.SQLCommand;

/**
 *
 * @author asus
 */
public class UserDAOImpl extends DBContext implements UserDAO{
    SQLCommand command = new SQLCommand();
    @Override
    public User getUserByUserAndPass(String user, String pass) throws SQLException {
        try {
            String sql = command.GET_USER_BY_PASSWORD_EMAIL;
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("Id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getBoolean("role"));
                return u;
            }
        } catch (SQLException ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
