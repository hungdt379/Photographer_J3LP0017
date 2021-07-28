/*
 * ContactDao.java
 *
 * All Rights Reserved 
 * Copyright (c) 2019 FPT University
 */
package dao;

import entity.Contact;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jdbc.DBContext;

/**
 * ContactDao.<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 *
 * . getContact.
 *
 * </pre>
 *
 * @author dangt
 */
public class ContactDao extends DBContext {

    /**
     * getContact.<br>
     * Lấy toàn bộ thông tin liên hệ đầu tiên của người có id gần nhất
     *
     * @return c
     */

    public Contact getContact() {

        Contact c = new Contact();
        String sql = "select * from dbo.Contact";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setId(rs.getInt("id"));
                c.setAddress(rs.getString("address"));
                c.setCity(rs.getString("city"));
                c.setCountry(rs.getString("country"));
                c.setTel(rs.getString("tel"));
                c.setEmail(rs.getString("email"));
                c.setAbout_me(rs.getString("aboutme"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContactDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
