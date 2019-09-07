package com.skilldistillery.music.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.music.entities.Song;

public class SongDAOImpl implements SongDAO{

	private static EntityManagerFactory emf; 
	
	static {
		emf = Persistence.createEntityManagerFactory("SongPU");
	}
	
	@Override
	public Song findSong(int id) {
		EntityManager em = emf.createEntityManager();
		return em.find(Song.class, id);
	}

	@Override
	public Song createSong(Song song) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(song);
		em.flush();
		em.getTransaction().commit();
		em.close();
		return song;
	}

	@Override
	public Song updateSong(int id, Song song) {
		EntityManager em = emf.createEntityManager();
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
		EntityManager em = emf.createEntityManager();
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
