/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;


public class SQLCommand {
   public final String GET_ALL_FIELDS = "SELECT [field_id] ,[field_name],[size],[cateField_id] FROM [dbo].[Field]";

    public final String GET_ALL_CATE_FIELDS = "SELECT [CateField_Id],[CateField_Name],[CateField_Address],[CateImage],[CateField_NumberLeft] FROM [dbo].[Category_Field]";

    public final String GET_ALL_SLOTS = "SELECT [Slot_Id] ,[Time],[Price] FROM [dbo].[Slot]";

    public final String INSERT_BOOKING_FIELD = "INSERT INTO [dbo].[Booking] ([User_Id],[Field_Id],[Slot_Id],[Booking_Date])VALUES (?,?,?,?)";

    public final String GET_DETAIL_BOOKING = "SELECT b.Booking_Date, u.name, cf.CateField_Name, s.[Time], s.Price, f.field_name, cf.CateField_Address, cf.CateField_Phone FROM [Booking] b INNER JOIN Slot s ON s.Slot_Id = b.Slot_Id\n"
            + "INNER JOIN Field f ON f.field_id = b.Field_Id\n"
            + "INNER JOIN Category_Field cf ON cf.CateField_Id = f.cateField_id\n"
            + "INNER JOIN [User] u ON u.Id = b.[User_Id]";
}
