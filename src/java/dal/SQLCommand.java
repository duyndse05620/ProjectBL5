/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

/**
 *
 * @author asus
 */
public class SQLCommand {
   public final String GET_ALL_FIELDS = "SELECT [Fid],[Field_name],[Quantity],[Size],[Address],[Phone],[Owner] FROM [dbo].[Fields]";
   
   public final String GET_ALL_CATE_FIELDS = "SELECT [CateField_Id],[CateField_Name],[CateField_Address],[CateImage],[CateField_NumberLeft] FROM [dbo].[Category_Field]";
   
}
