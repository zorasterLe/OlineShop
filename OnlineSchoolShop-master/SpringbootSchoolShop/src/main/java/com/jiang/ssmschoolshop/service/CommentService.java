package com.jiang.ssmschoolshop.service;


import com.jiang.ssmschoolshop.entity.Comment;
import com.jiang.ssmschoolshop.entity.CommentExample;

import java.util.List;

public interface CommentService {
    public void insertSelective(Comment comment);

    public List<Comment> selectByExample(CommentExample commentExample);
}
