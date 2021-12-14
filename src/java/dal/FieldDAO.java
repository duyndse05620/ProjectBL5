/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import model.CateField;
import model.Field;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author asus
 */
public interface FieldDAO {
    public List<Field> getAllFields() throws SQLException;
    
    public List<CateField> getAllCateFields() throws SQLException;
}
