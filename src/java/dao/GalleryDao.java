/*
 * GalleryDao.java
 *
 * All Rights Reserved 
 * Copyright (c) 2019 FPT University
 */
package dao;

import entity.Gallery;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jdbc.DBContext;

/**
 * GalleryDao.<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 *
 * . getGalleries.
 *
 * </pre>
 *
 * @author dangt
 */
public class GalleryDao extends DBContext {

    /**
     * getGalleries.<br>
     * Lấy toàn bộ thông tin của các gallery có trong database.
     *
     * @return list
     */

    public List<Gallery> getGalleries() {

        List<Gallery> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Gallery";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                Gallery g = new Gallery();
                g.setId(rs.getInt("id"));
                g.setName(rs.getString("name"));
                g.setPicture(rs.getString("picture"));
                g.setDescription(rs.getString("description"));
                list.add(g);

            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
