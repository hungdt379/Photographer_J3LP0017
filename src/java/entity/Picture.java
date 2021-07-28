/*
 * Picture.java
 *
 * All Rights Reserved 
 * Copyright (c) 2019 FPT University
 */
package entity;

/**
 * Picture.<br>
 *
 * <pre>
 * Class mô tả đối tượng Picture
 * Trong class này sẽ tiến hành các xử lí dưới đây
 * .
 * . GetId.
 * . SetId.
 * . getName
 * . setName
 * .
 * </pre>
 *
 * @author dangt
 */
public class Picture {
    /**
     * Store id.
     */
    private int id;
    /**
     * Store name.
     */
    private String name;

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
}
