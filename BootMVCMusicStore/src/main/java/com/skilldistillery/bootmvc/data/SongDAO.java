package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.music.entities.Song;

public interface SongDAO {

	public Song findSong(int id);
	
	public Song createSong(Song song);
	
	public Song updateSong(int id, Song song);
	
	public boolean destroySong(int id);
	
	public List<Song> getSongsByKeyword(String keyword);
	
	public List<Song> getAllSongs();
}
