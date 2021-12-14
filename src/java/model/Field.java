/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


public class Field {
    private int fieldId;
    private String fieldName;
    private String size;
    private int cateFieldId;
    private CateField cateField;

    public CateField getCateField() {
        return cateField;
    }

    public void setCateField(CateField cateField) {
        this.cateField = cateField;
    }
    
    public int getFieldId() {
        return fieldId;
    }

    public void setFieldId(int fieldId) {
        this.fieldId = fieldId;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getCateFieldId() {
        return cateFieldId;
    }

    public void setCateFieldId(int cateFieldId) {
        this.cateFieldId = cateFieldId;
    }
}
