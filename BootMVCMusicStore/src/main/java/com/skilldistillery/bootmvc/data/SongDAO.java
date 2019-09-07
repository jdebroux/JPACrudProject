package com.skilldistillery.bootmvc.data;

import com.skilldistillery.music.entities.Song;

public interface SongDAO {

	public Song findSong(int id);
	
	public Song createSong(Song song);
	
	public Song updateSong(int id, Song song);
	
	public boolean destroySong(int id);
}
