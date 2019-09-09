package com.skilldistillery.bootmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.bootmvc.data.SongDAO;
import com.skilldistillery.music.entities.Song;

@Controller
public class SongController {

	@Autowired
	private SongDAO dao;

	@RequestMapping(path = "song.do", method = RequestMethod.GET)
	public String song() {
		return "song/show";
	}

	@RequestMapping(path = { "home.do", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(path = "showSingleSong.do")
	public String showSong(@RequestParam("sid") Integer sid, Model model) {
		if (sid == null) {
			return "song/songbyid";
		}
		Song song = dao.findSong(sid);
		model.addAttribute("song", song);
		return "song/show";
	}

	@RequestMapping(path = "songById.do")
	public String idButton() {
		return "song/songbyid";
	}

	@RequestMapping(path = "songByKeyword.do")
	public String keywordButton() {
		return "song/songbykeyword";
	}

	@RequestMapping(path = "addNewSongPage.do")
	public String addSong() {
		return "song/addeditsong";
	}
	@RequestMapping(path = "editSong.do")
	public String editSong(int id, Model model) {
		model.addAttribute("song", dao.findSong(id));
		return "song/addeditsong";
	}
	@RequestMapping(path = "deleteSong.do", method=RequestMethod.POST)
	public String deleteSong(int id, Model model) {
		Boolean b = dao.destroySong(id);
		model.addAttribute("b", b);
		return "song/deletesong";
	}

	@RequestMapping(path = "newOrEditSong.do", method = RequestMethod.POST)
	public String newOrEditSong(Song song, RedirectAttributes redir) {
		redir.addFlashAttribute("song", dao.createSong(song));
		return "redirect:song.do";
	}
	
	@RequestMapping(path= "getKeywordSongs.do", method = RequestMethod.GET)
	public String findSongsByKeyword(Model model, @RequestParam("keyword") String keyword) {
		if(keyword == null || keyword == "") {
			return "song/songbykeyword";
		}
		model.addAttribute("songs", dao.getSongsByKeyword(keyword));
		return "song/showsonglist";
	}
}
