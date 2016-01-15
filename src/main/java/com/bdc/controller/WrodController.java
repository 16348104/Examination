package com.bdc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.bdc.model.Wrod;
import com.bdc.service.WrodService;

@Controller
@RequestMapping("wrod")
public class WrodController extends BaseController {

    @Autowired
    private WrodService wrodService;

    @RequestMapping("add")
    private String add(Wrod wrod) {
        wrodService.add(wrod);
        return "redirect:/wrod/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        wrodService.remove(id);
        return "redirect:/wrod/list";
    }

    @RequestMapping("modify")
    private String modify(Wrod wrod) {
        wrodService.modify(wrod);
        return "redirect:/wrod/list";
    }

    @RequestMapping("list")
    private String list() {
        getSession().setAttribute("list", wrodService.list());
        return "redirect:/wrod/list.jsp";
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("wrod", wrodService.search(id));
        return "redirect:/wrod/edit.jsp";
    }
}