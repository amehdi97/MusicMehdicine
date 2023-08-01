package com.capstone.spring.dao;

import java.util.List;
import com.capstone.spring.model.Song;

public interface SongDao {
	public void createSong(Song song);
	
	public List<Song> getSongs();
	
	public Song getSong(int sid);
	
	public List<Song> getSongsByPlist(String playlist);
}
