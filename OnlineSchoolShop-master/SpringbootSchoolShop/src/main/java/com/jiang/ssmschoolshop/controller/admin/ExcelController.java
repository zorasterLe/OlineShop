package com.jiang.ssmschoolshop.controller.admin;

import com.jiang.ssmschoolshop.entity.Goods;
import com.jiang.ssmschoolshop.entity.GoodsExample;
import com.jiang.ssmschoolshop.service.GoodsService;
import com.jiang.ssmschoolshop.util.ExcelUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class ExcelController {

    @Autowired
    private GoodsService goodsService;


    @GetMapping("/excel/export")
    public String ExportRecord(HttpServletResponse response, HttpServletRequest request) {
        List<Goods> goodsList = goodsService.selectByExample(new GoodsExample());

        //定义导出的excel名字
        String excelName = "资源详情表";

        //导出用户相关信息
        new ExcelUtils().export(excelName, goodsList, Goods.class, response);
        return "导出资源成功";
    }

    @GetMapping("/excel/import")
    public String ImportRecord(HttpServletResponse response, HttpServletRequest request) {
        String path = "D:\\github\\myproject\\SptingbootSchoolShop\\import.txt";
        //List<Goods> goodsList=(List<Goods>)ExcelUtils.getRecordByTxt(path);
        // 入库
        return "导入资源成功";
    }


}
