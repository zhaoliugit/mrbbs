package com.mrkj.ygl.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.sun.org.apache.bcel.internal.generic.NEW;

@Service
public class MainPageService {

	@Resource
	JdbcTemplate jdbc;
	//注入时间格式化
	@Resource
	SimpleDateFormat sdf;
	
	public int saveMainContent(String content,String mainTitle,String mainCreatuser) {
		//定义SQL语句，这里的SQL使用的是防注入模式，VALUES的值使用的是？占位符
		String sql_save_mymain="INSERT INTO my_main"
				+"(main_id,main_title,main_content,"
				+"main_creatime,main_creatuser,main_commend)"
				+"VALUES(?,?,?,?,?,?)";
		
		String sql_save_myinfo="INSERT INTO my_info"
				+"(main_id,info_reply,info_see,"
				+"info_lastuser,info_lasttime)"
				+"VALUES(?,0,0,?,?)";
		//表ID使用的是UUID
		String mainId=UUID.randomUUID().toString();
		//格式化时间，格式要与数据库中的datatime相对应yyyy-MM-dd hh:mm:ss
		sdf.applyPattern("yyyy-MM-dd hh:mm:ss");
		//获取当前时间作为创建时间
		String mainCreatime = sdf.format(new Date());
		//精华帖标记，0普通帖，1精华帖
		Integer mainCommond = 0;
		//初始化myinfo数据表，注意my_info表的id为自增长所以这里并没有设置info_id的值
		jdbc.update(sql_save_myinfo,mainId,mainCreatuser,mainCreatime); 
		//执行update语句，第一个参数sql语句，后面可以写任意多的参数
		return jdbc.update(sql_save_mymain,mainId,mainTitle,content,mainCreatime,mainCreatuser,mainCommond);
		
	}
}
