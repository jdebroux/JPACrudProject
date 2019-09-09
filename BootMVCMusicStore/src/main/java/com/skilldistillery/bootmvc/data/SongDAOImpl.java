package com.skilldistillery.bootmvc.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.music.entities.Song;

@Service
@Transactional
public class SongDAOImpl implements SongDAO{
	
	@PersistenceContext(name = "SongPU")
	private EntityManager em;

	@Override
	public Song findSong(int id) {
		return em.find(Song.class, id);
	}

	@Override
	public Song createSong(Song song) {
		em.persist(song);
		em.flush();
		em.close();
		return song;
	}

	@Override
	public Song updateSong(int id, Song song) {
		Song changedSong = em.find(Song.class, id);
		changedSong.setTitle(song.getTitle());
		changedSong.setLyrics(song.getLyrics());
		changedSong.setLength(song.getLength());
		changedSong.setLanguageId(song.getLanguageId());
		changedSong.setGenreId(song.getGenreId());
		changedSong.setCostAmount(song.getCostAmount());
		changedSong.setAlbum(song.getAlbum());
		changedSong.setArtist(song.getArtist());
		changedSong.setReleaseYear(song.getReleaseYear());
		em.flush();
		em.close();
		return changedSong;
	}

	@Override
	public boolean destroySong(int id) {
		boolean status = false;
		Song song = em.find(Song.class, id);
		em.remove(song);
		em.flush();
		status = em.contains(song);
		em.close();
		return !status;
	}

	@Override
	public List<Song> getSongsByKeyword(String keyword) {
		String search = "%" + keyword + "%";
		String qS = "SELECT song FROM Song song WHERE song.title LIKE :keyword OR song.artist LIKE :keyword OR song.album LIKE :keyword";
		List <Song> songs = em.createQuery(qS, Song.class).setParameter("keyword", search).getResultList();
		return songs;
	}

	@Override
	public List<Song> getAllSongs() {
		return em.createQuery("SELECT song FROM Song song", Song.class).getResultList();
	}
}
