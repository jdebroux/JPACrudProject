package com.skilldistillery.bootmvc.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.music.entities.Song;

@Service
@Transactional
public class SongDAOImpl implements SongDAO{
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Song findSong(int id) {
		return em.find(Song.class, id);
	}

	@Override
	public Song createSong(Song song) {
		em.getTransaction().begin();
		em.persist(song);
		em.flush();
		em.getTransaction().commit();
		em.close();
		return song;
	}

	@Override
	public Song updateSong(int id, Song song) {
		em.getTransaction().begin();
		Song changedSong = em.find(Song.class, id);
		changedSong.setTitle(song.getTitle());
		changedSong.setLyrics(song.getLyrics());
		changedSong.setLength(song.getLength());
		changedSong.setLanguageId(song.getLanguageId());
		changedSong.setGenreId(song.getGenreId());
		changedSong.setCostAmount(song.getCostAmount());
		em.flush();
		em.getTransaction().commit();
		em.close();
		return changedSong;
	}

	@Override
	public boolean destroySong(int id) {
		boolean status = false;
		Song song = em.find(Song.class, id);
		em.getTransaction().begin();
		em.remove(song);
		em.flush();
		em.getTransaction().commit();
		status = em.contains(song);
		em.close();
		return !status;
	}
}
