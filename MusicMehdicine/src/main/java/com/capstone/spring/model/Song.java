package com.capstone.spring.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Song {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String songName;
	private String artistName;
	private String link;
	private String playlist;
	@OneToOne
	private User user;
	
	public Song() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Song(int id, String songName, String artistName, String link, String playlist) {
		super();
		this.id = id;
		this.songName = songName;
		this.artistName = artistName;
		this.link = link;
		this.playlist = playlist;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSongName() {
		return songName;
	}

	public void setSongName(String songName) {
		this.songName = songName;
	}

	public String getArtistName() {
		return artistName;
	}

	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPlaylist() {
		return playlist;
	}

	public void setPlaylist(String playlist) {
		this.playlist = playlist;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", songName=" + songName + ", artistName=" + artistName + ", link=" + link
				+ ", playlist=" + playlist + "]";
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	
}