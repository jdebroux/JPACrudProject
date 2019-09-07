package com.skilldistillery.bootmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.bootmvc.data.SongDAO;
import com.skilldistillery.music.entities.Song;

@Controller
public class SongController {
	
	@Autowired
	private SongDAO dao;
	
	@RequestMapping(path= {"home.do", "/"}, method = RequestMethod.GET)
	public String index(Model model) {
		
		return "index";
	}
	
	@RequestMapping(path="getSong.do")
	public String showSong(@RequestParam("sid") Integer sid, Model model) {
		Song song = dao.findSong(sid);
		model.addAttribute("song", song);
		return "song/show";
	}
}
