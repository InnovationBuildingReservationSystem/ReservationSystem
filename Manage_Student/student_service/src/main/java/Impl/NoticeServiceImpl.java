package Impl;

import mapper.NoticeItemsMapper;
import mapper.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Notice;
import service.NoticeService;

import java.util.List;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    NoticeMapper noticeMapper;

    @Autowired
    NoticeItemsMapper noticeItemsMapper;

    @Override
    public List<Notice> getNotice() {
        List<Notice> list = noticeItemsMapper.getNotice();
        return list;
    }
}
