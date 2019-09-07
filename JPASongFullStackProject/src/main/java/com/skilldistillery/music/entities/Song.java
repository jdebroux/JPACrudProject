package com.skilldistillery.music.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Song {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private Double length;
	private String lyrics;
	@Column(name = "language_id")
	private Integer languageId;
	@Column(name = "genre_id")
	private Integer genreId;
	@Column(name = "cost_amount")
	private Double costAmount;
	@Column(name = "release_year")
	private Integer releaseYear;

	public Song() {}
	
	public Song(String title, Double length, String lyrics, Integer languageId, Integer genreId, Double costAmount, Integer releaseYear) {
		this.title = title;
		this.length = length;
		this.lyrics = lyrics;
		this.languageId = languageId;
		this.genreId = genreId;
		this.costAmount = costAmount;
		this.releaseYear = releaseYear;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Double getLength() {
		return length;
	}

	public void setLength(Double length) {
		this.length = length;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public Integer getLanguageId() {
		return languageId;
	}

	public void setLanguageId(Integer languageId) {
		this.languageId = languageId;
	}

	public Integer getGenreId() {
		return genreId;
	}

	public void setGenreId(Integer genreId) {
		this.genreId = genreId;
	}

	public Double getCostAmount() {
		return costAmount;
	}

	public void setCostAmount(Double costAmount) {
		this.costAmount = costAmount;
	}

	public Integer getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(Integer releaseYear) {
		this.releaseYear = releaseYear;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", title=" + title + ", length=" + length + ", lyrics=" + lyrics + ", languageId="
				+ languageId + ", genreId=" + genreId + ", costAmount=" + costAmount + ", releaseYear=" + releaseYear
				+ "]";
	}
}
