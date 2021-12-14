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
import model.Booking;
import model.Slot;
import model.User;

public class FieldDAOImpl extends DBContext implements FieldDAO {

    SQLCommand command = new SQLCommand();

    @Override
    public List<Field> getAllFields() throws SQLException {
        List<Field> fields = new ArrayList<>();
        try {
            String sql = command.GET_ALL_FIELDS;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Field f = new Field();
                f.setFieldId(rs.getInt("field_id"));
                f.setFieldName(rs.getString("field_name"));
                f.setSize(rs.getString("size"));
                f.setCateFieldId(rs.getInt("cateField_id"));
                fields.add(f);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fields;
    }

    @Override
    public List<CateField> getAllCateFields() throws SQLException {
        List<CateField> cateFields = new ArrayList<>();
        try {
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
        return cateFields;
    }

    @Override
    public List<Slot> getAllSlots() throws SQLException {
        List<Slot> slots = new ArrayList<>();
        try {
            String sql = command.GET_ALL_SLOTS;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Slot s = new Slot();
                s.setSlotId(rs.getInt("Slot_Id"));
                s.setPrice(rs.getString("Price"));
                s.setTime(rs.getString("Time"));
                slots.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return slots;
    }

    @Override
    public int insertBookingField(Booking b) throws SQLException {
        int check = 0;
        try {
            String sql = command.INSERT_BOOKING_FIELD;
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, b.getUserId());
            stm.setInt(2, b.getFieldId());
            stm.setInt(3, b.getSlotId());
            stm.setDate(4, b.getBookingDate());
            check = stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }

    @Override
    public List<Booking> getAllDetailsBooking() throws SQLException {
        List<Booking> bookings = new ArrayList<>();
        try {
            String sql = command.GET_DETAIL_BOOKING;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User s = new User();
                s.setName(rs.getString("name"));

                CateField cf = new CateField();
                cf.setCateFieldName(rs.getString("CateField_Name"));
                cf.setCateFieldAddress(rs.getString("CateField_Address"));
                cf.setPhone(rs.getString("CateField_Phone"));

                Slot slot = new Slot();
                slot.setTime(rs.getString("Time"));
                slot.setPrice(rs.getString("Price"));

                Field f = new Field();
                f.setFieldName(rs.getString("field_name"));
                f.setCateField(cf);

                Booking b = new Booking();
                b.setBookingDate(rs.getDate("Booking_Date"));
                b.setUser(s);
                b.setField(f);
                b.setSlot(slot);
                bookings.add(b);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FieldDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bookings;
    }

}
