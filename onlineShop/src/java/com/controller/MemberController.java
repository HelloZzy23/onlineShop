package com.controller;

import com.pojo.Admin;
import com.pojo.Commodity;
import com.pojo.Member;
import com.pojo.ShopCart;
import com.service.AdminService;
import com.service.CommodityService;
import com.service.MemberService;
import com.service.ShopCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

//import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;
    @Autowired
    private ShopCartService shopCartService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private CommodityService commodityService;

//    private ShopCartService shopCartService;

    //查询所有会员信息，发送至管理员界面
    @RequestMapping("/allMember")
    public String allMember(Model model){
        List<Member> list=memberService.queryAllMember();
        List<Commodity> commodities=commodityService.queryAllCommodity();
        model.addAttribute("list1",list);
        model.addAttribute("commodities",commodities);
        return "allMember";
    }

    //登陆
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    //表单提交过来的路径
    @RequestMapping("/checkLogin")
    public String checkLogin(Member member,Model model){
        //调用服务层service 提供的checkLogin()方法
        Member member1=memberService.checkLogin(member.getMemName(),member.getPassword());
        //若有member则添加到model里并且跳转到成功页面
        if(member1!=null){
            model.addAttribute("member",member1);
            model.addAttribute("memName",member1.getMemName());
            String count=String.valueOf(memberService.shopCartCount(member.getMemName()));
            model.addAttribute("count1",count);

            return "success";
        }
        else return "loginFail";
    }

    @RequestMapping("/regist")
    public String regist(){
        return "register";
    }

        @RequestMapping("/addMember")
        public String addmember(Member member){
            memberService.addMember(member);
            return "redirect:/login";
        }
    @RequestMapping("/shopCart/{memName}")
    public String toShopCart(Model model,@PathVariable("memName")String memName1) {
        //List<ShopCart> list=shopCartService.queryByName("zzy");
        List<ShopCart> list=shopCartService.queryByName(memName1);
        model.addAttribute("shopCartInfo",list);
        return "shopCart";
    }

    @RequestMapping("/delete/{id}/{memName}")
    public String delete(@PathVariable("id") int id1){
        shopCartService.deleteCommodityById(id1);
        return "redirect:/shopCart/{memName}";
    }



    //管理员登陆
    @RequestMapping("/adminLogin")
    public String adminLogin() { return "adminLogin";}
    @RequestMapping("/checkAdminLogin")
    public String checkAdminLogin(Admin admin){
        Admin admin1=adminService.checkLogin(admin.getName(),admin.getPassword());
        if(admin1!=null){
            return "redirect:/allMember";
        }
        else return "loginFail";
    }

    //删除会员
    @RequestMapping("/delMemberById/{memId}")
    public String delMemberById(@PathVariable("memId")int memId1){
        memberService.deleteMemberById(memId1);
        return "redirect:/allMember";
    }

    //删除商品
    @RequestMapping("/deleteCommodityById/{comId}")
    public String deleteCom(@PathVariable("comId")int comId1){
        commodityService.delete(comId1);
        //删除后重定向到allMember
        return "redirect:/allMember";
    }

    //添加商品到数据库
    @RequestMapping("/addShopCart/{comId}")
    public String toAddShopCart(Model model,@PathVariable("comId")int comId1) {
        Commodity commodity=commodityService.queryById(comId1);
        model.addAttribute("commodity",commodity);
        return "addShopCart";
    }

    //添加到购物车
    @RequestMapping("/addCommodity")
    public String addCommodity(ShopCart shopCart){
        //shopCart.setMemName("zzy");
        //shopCart.setMemName(memName1);

        shopCartService.addCommodity(shopCart);
        return "redirect:/shopCart/"+shopCart.getMemName();
    }

    @RequestMapping("/searchCommodity")
    public String searchCommodity(Model model,Commodity commodity){
//        String s1="球";
        List<Commodity>list=commodityService.searchCommodity(commodity.getIntroduce());
        model.addAttribute("product",list);
        return "showProduct";
    }

    //管理员修改商品信息
    @RequestMapping("/updateCommodity/{comId}")
    public String toUpdateCommodity(Model model,@PathVariable("comId")int comId1){
        Commodity commodity=commodityService.queryById(comId1);
        model.addAttribute("commodity",commodity);
        return "updateCommodity";
    }

    @RequestMapping("/toUpdate")
    public String toupdate(Commodity commodity){
        commodityService.updateCommodity(commodity);
        return "redirect:/allMember";
    }

    //  新增  按钮的跳转
    @RequestMapping("/addsp")
    public String addsp(){return "addCommodity"; }
    //管理员添加商品
    @RequestMapping("/toAddCommodity")
    public String toAddCommodity(Commodity commodity){
        commodityService.addCommodity(commodity);
        return "redirect:/allMember";
    }
}
