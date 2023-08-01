package com.capstone.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.capstone.spring.dao.SongDao;
import com.capstone.spring.dao.UserDao;
import com.capstone.spring.model.Song;
import com.capstone.spring.model.User;

@Component
public class SongServiceImpl implements SongService {
	
	@Autowired
	private SongDao songDao;
	
	//create
	@Transactional
	public void createSong(Song song) {
		songDao.createSong(song);
	}

	//get all songs
	public List<Song> getSongs() {
		return songDao.getSongs();
	}

	public Song getSong(int sid) {
		return songDao.getSong(sid);
	}

	public List<Song> getSongsByPlist(String playlist) {
		return songDao.getSongsByPlist(playlist);
	}

}
