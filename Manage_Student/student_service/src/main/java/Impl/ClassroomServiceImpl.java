package Impl;

import mapper.ClassroomItemMapper;
import mapper.ClassroomMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Classroom;
import service.ClassroomService;

import java.util.List;

@Service
@Transactional
public class ClassroomServiceImpl implements ClassroomService {

    @Autowired
    ClassroomMapper classroomMapper;
    @Autowired
    ClassroomItemMapper classroomItemMapper;
    @Override
    public List<Classroom> getClassroomList() {
        List<Classroom> list = classroomItemMapper.getClassroomItemList();
        return list;
    }
}
