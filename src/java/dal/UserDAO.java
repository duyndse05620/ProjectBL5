/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import model.User;
import java.sql.SQLException;

/**
 *
 * @author asus
 */
public interface UserDAO {
    public User getUserByUserAndPass(String email, String pass) throws SQLException;
}
