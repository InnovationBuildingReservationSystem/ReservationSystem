package pojo;

import java.io.Serializable;
import java.util.List;

public class OrderTimeTable implements Serializable
{
    private  String cid;
    private  List<ItemDate> itemDateList;

    public String getCid()
    {
        return cid;
    }

    public void setCid(String cid)
    {
        this.cid = cid;
    }

    public List<ItemDate> getItemDateList()
    {
        return itemDateList;
    }

    public void setItemDateList(List<ItemDate> itemDateList)
    {
        this.itemDateList = itemDateList;
    }
}
