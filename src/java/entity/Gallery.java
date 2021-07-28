/*
 * Gallery.java
 *
 * All Rights Reserved 
 * Copyright (c) 2019 FPT University
 */
package entity;

/**
 * Gallery.<br>
 *
 * <pre>
 * Class mô tả đối tượng Gallery
 * Trong class này sẽ tiến hành các xử lí dưới đây
 * .
 * . GetId.
 * . SetId.
 * . getName
 * . setName
 * . getPicture
 * . setPicture
 * . getDescription
 * . setDescription
 * .
 * </pre>
 *
 * @author dangt
 */
public class Gallery {
    /**
     * Store id.
     */
    private int id;
    /**
     * Store name.
     */
    private String name;
    /**
     * Store picture
     */
    private String picture;
    /**
     * Store description.
     */
    private String description;

    /**
     * get id <br>
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Set id.<br>
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * get name <br>
     *
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * Set name.<br>
     *
     * @param name the name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * get pictureCover <br>
     *
     * @return the picture
     */
    public String getPicture() {
        return picture;
    }

    /**
     * Set pictureCover.<br>
     *
     * @param picture the picture
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }

    /**
     * get description <br>
     *
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * Set description.<br>
     *
     * @param description the description
     */
    public void setDescription(String description) {
        this.description = description;
    }
}
