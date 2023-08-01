package com.capstone.spring.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.capstone.spring.model.Song;
import com.capstone.spring.model.User;

@Component
public class SongDaoImpl implements SongDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createSong(Song song) {
		this.hibernateTemplate.saveOrUpdate(song);
	}
	
	//get all songs
	public List<Song> getSongs(){
		List<Song> songs= this.hibernateTemplate.loadAll(Song.class);
		return songs;
	}
	
	//get single song
	public Song getSong(int sid) {
		return this.hibernateTemplate.get(Song.class, sid);
	}

	public List<Song> getSongsByPlist(String playlist) {
	    DetachedCriteria criteria = DetachedCriteria.forClass(Song.class);
	    criteria.add(Restrictions.eq("playlist", playlist));
	    List<Song> pSongs = (List<Song>) hibernateTemplate.findByCriteria(criteria);
	    return pSongs;
	}
}

