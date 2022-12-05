package com.example.springmvc.controller;

import com.example.springmvc.Model.PlayerStats;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class StatsController {
    @RequestMapping("/showStatsForm")
    public String showForm(Model model){
        model.addAttribute("playerStats", new PlayerStats());
        return "head-to-head";
    }

    @RequestMapping("/processStatsForm")
    public String processForm(@Valid @ModelAttribute("playerStats")PlayerStats playerStats, BindingResult result){
        if(result.hasErrors())
            return "head-to-head";
        else
            return "stats-confirmation";
    }
}
