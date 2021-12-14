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
import model.Booking;
import model.Slot;


public interface FieldDAO {
    public List<Field> getAllFields() throws SQLException;
    
    public List<CateField> getAllCateFields() throws SQLException;
    
    public List<Slot> getAllSlots() throws SQLException;
    
    public int insertBookingField(Booking b) throws SQLException;
    
    public List<Booking> getAllDetailsBooking() throws SQLException;
}
