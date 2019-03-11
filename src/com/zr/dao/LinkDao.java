package com.zr.dao;

import com.zr.entity.Link;

import java.util.List;

/**
 * @author: LiGX
 * @Date: 2019/3/11 0011
 */
public interface LinkDao {
    public List<Link> findAll();
}
