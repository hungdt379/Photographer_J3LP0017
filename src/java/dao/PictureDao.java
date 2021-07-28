/*
 * PictureDao.java
 *
 * All Rights Reserved 
 * Copyright (c) 2019 FPT University
 */
package dao;

import entity.Picture;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jdbc.DBContext;

/**
 * PictureDao.<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 *
 * . getPicturesByIds.
 *
 * </pre>
 *
 * @author dangt
 */
public class PictureDao extends DBContext{
    /**
     * getPicturesById.<br>
     * Lấy tất cả các hình ảnh có giá trị truyền vào là id gallery 
     *
     * @param id
     * @return list
     */
    
    public List<Picture> getPicturesByIds(int id){        
        List<Picture> list = new ArrayList<>();
        
        StringBuilder x = new StringBuilder("");
        x.append("select p.id, p.picture from dbo.Gallery_Picture gp join dbo.Picture p on gp.pictureID = p.id  where gp.galleryID = 1");
        x.append(" where GP.galleryId = G.id and GP.pictureId = P.id and G.id = ?");
        String sql = x.toString();
        try(PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Picture p = new Picture();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("picture"));
                list.add(p);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }

}
