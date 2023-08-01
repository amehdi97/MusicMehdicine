package com.capstone.spring.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Playlist {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String playlist;
	
	public Playlist() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlaylist() {
		return playlist;
	}

	public void setPlaylist(String playlist) {
		this.playlist = playlist;
	}

	@Override
	public String toString() {
		return "Playlist [id=" + id + ", playlist=" + playlist + "]";
	}

	
	
	
}