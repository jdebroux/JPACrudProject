package com.skilldisrtillery.music.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.music.entities.Song;

public class SongTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Song song;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SongPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		song = em.find(Song.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		song = null;
	}

	@Test
	@DisplayName("testing valid Song class annotations")
	public void test1() {
		assertEquals(2.99, song.getCostAmount(), 0.001);
		assertEquals(2, song.getGenreId());
		assertEquals(1, song.getLanguageId());
		assertEquals("gooberish-ish baby", song.getLyrics());
		assertEquals(5.29, song.getLength());
		assertEquals("Goober", song.getTitle());
		assertEquals(2019, song.getReleaseYear());
		assertEquals("Goobettes", song.getArtist());
		assertEquals("Let it Roll", song.getAlbum());
	}
}
