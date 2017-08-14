package com.nealblog.mapper;

import com.nealblog.po.Comment;
import com.nealblog.po.CommentExample;
import com.nealblog.po.CommentWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
    long countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    int deleteByPrimaryKey(Integer commentid);

    int insert(CommentWithBLOBs record);

    int insertSelective(CommentWithBLOBs record);

    List<CommentWithBLOBs> selectByExampleWithBLOBs(CommentExample example);

    List<Comment> selectByExample(CommentExample example);

    CommentWithBLOBs selectByPrimaryKey(Integer commentid);

    int updateByExampleSelective(@Param("record") CommentWithBLOBs record, @Param("example") CommentExample example);

    int updateByExampleWithBLOBs(@Param("record") CommentWithBLOBs record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(CommentWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CommentWithBLOBs record);

    int updateByPrimaryKey(Comment record);
}