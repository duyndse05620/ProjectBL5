/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import dal.FieldDAO;
import model.CateField;
import model.Field;
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
public class FieldDAOImpl extends DBContext implements FieldDAO{

    @Override
    public List<Field> getAllFields() throws SQLException {
        List<Field> fields = new ArrayList<>();
        try {
            SQLCommand command = new SQLCommand();
            String sql = command.GET_ALL_FIELDS;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Field f = new Field();
                f.setFieldId(rs.getInt("Fid"));
                f.setFieldName(rs.getString("Field_name"));
                f.setAddress(rs.getString("Address"));
                f.setOwner(rs.getString("Owner"));
                f.setPhone(rs.getString("Phone"));
                f.setQuantity(rs.getInt("Quantity"));
                f.setSize(rs.getString("Size"));
                fields.add(f);
            }

        } catch (SQLException ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fields ;
    }

    @Override
    public List<CateField> getAllCateFields() throws SQLException {
        List<CateField> cateFields = new ArrayList<>();
        try {
            SQLCommand command = new SQLCommand();
            String sql = command.GET_ALL_CATE_FIELDS;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                CateField cateField = new CateField();
                cateField.setCateFieldId(rs.getInt("CateField_Id"));
                cateField.setCateFieldName(rs.getString("CateField_Name"));
                cateField.setCateFieldAddress(rs.getString("CateField_Address"));
                cateField.setCateFieldNumberLeft(rs.getInt("CateField_NumberLeft"));
                cateField.setCateImage(rs.getString("CateImage"));
                cateFields.add(cateField);
            }

        } catch (SQLException ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cateFields ;
    }
    
}
