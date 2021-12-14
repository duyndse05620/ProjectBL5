/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;


public class CateField {
    private int cateFieldId;
    private String cateFieldName;
    private String cateFieldAddress;
    private int cateFieldNumberLeft;
    private String cateImage;
    private String phone;
    private List<Field> fields;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<Field> getFields() {
        return fields;
    }

    public void setFields(List<Field> fields) {
        this.fields = fields;
    }

    
    public int getCateFieldId() {
        return cateFieldId;
    }

    public void setCateFieldId(int cateFieldId) {
        this.cateFieldId = cateFieldId;
    }

    public String getCateFieldName() {
        return cateFieldName;
    }

    public void setCateFieldName(String cateFieldName) {
        this.cateFieldName = cateFieldName;
    }

    public String getCateFieldAddress() {
        return cateFieldAddress;
    }

    public void setCateFieldAddress(String cateFieldAddress) {
        this.cateFieldAddress = cateFieldAddress;
    }

    public int getCateFieldNumberLeft() {
        return cateFieldNumberLeft;
    }

    public void setCateFieldNumberLeft(int cateFieldNumberLeft) {
        this.cateFieldNumberLeft = cateFieldNumberLeft;
    }

    public String getCateImage() {
        return cateImage;
    }

    public void setCateImage(String cateImage) {
        this.cateImage = cateImage;
    }
    
    
    
}
