package mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.Classroomorder;
import pojo.ClassroomorderExample;

import java.util.List;

public interface ClassroomorderMapper {
    int countByExample(ClassroomorderExample example);

    int deleteByExample(ClassroomorderExample example);

    int deleteByPrimaryKey(Integer oid);

    int insert(Classroomorder record);

    int insertSelective(Classroomorder record);

    List<Classroomorder> selectByExample(ClassroomorderExample example);

    Classroomorder selectByPrimaryKey(Integer oid);

    int updateByExampleSelective(@Param("record") Classroomorder record, @Param("example") ClassroomorderExample example);

    int updateByExample(@Param("record") Classroomorder record, @Param("example") ClassroomorderExample example);

    int updateByPrimaryKeySelective(Classroomorder record);

    int updateByPrimaryKey(Classroomorder record);
}