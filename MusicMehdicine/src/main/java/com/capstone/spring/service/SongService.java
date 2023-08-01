package com.capstone.spring.service;

import java.util.List;

import com.capstone.spring.model.Song;

public interface SongService {
	public void createSong(Song song);
	
	public List<Song> getSongs();
	
	public Song getSong(int sid);
	
	public List<Song> getSongsByPlist(String playlist);
}
