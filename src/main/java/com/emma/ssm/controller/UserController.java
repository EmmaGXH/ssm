package com.emma.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.emma.ssm.common.JsonBean;
import com.emma.ssm.entity.TbUser;
import com.emma.ssm.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	 @Autowired 
	 private UserService userService;
	
	 
	 /**
		 * 用户列表
		 * 
		 * @param tbUser
		 * @param model
		 * @return
		 */
	 @RequestMapping("list") 
	 @ResponseBody
	 public JsonBean getList() { 
		 return userService.selectList();
	  }
	 
	 
	 /**
	  * 跳转到列表页面
	  * @return
	  */
	 @RequestMapping("toList")
	 public String toList() {
		 return "list";
	 }
	 
	/**
		 * 去添加页面
		 * 
		 * @return
		 */
	 @RequestMapping("toAdd")
	 public String toAdd() { 
		 return "add";
	}
	 
	 /**
	* 添加数据
	* 
	* @param tbUser
	* @return
	*/
	 @RequestMapping("add") 
	 public String add(TbUser tbUser) {
	  userService.save(tbUser); 
	  return "redirect:list.do"; 
	  }
	 
	 
	 /**
		 * 去修改页面
		 * 
		 * @return
		 */
	 @RequestMapping("toUpdate")
	 public String toUpdate(Integer id,Model model) {
		 model.addAttribute("user",userService.selectById(id)); 
		 return "update"; 
	  }
	/**
		 * 修改数据
		 * 
		 * @param tbUser
		 * @return
		 */
	 @RequestMapping("update")
	 @ResponseBody
	 public JsonBean update(TbUser tbUser) { 		 
		 return userService.update(tbUser);
	  }
	 
	 /**
	 * 删除数据
	* 
	* @param id
	* @return
	*/ 
	 @RequestMapping("delete") 
	 public String delete(Integer id) {
		 userService.delete(id); 
		 return "redirect:list.do"; 
	 }
	 
	 @RequestMapping("selectById")
	 @ResponseBody
	 public JsonBean selectByID(Integer userId) {
		
		 return new JsonBean(0,"ok", userService.selectById(userId));
	 }
		
}
