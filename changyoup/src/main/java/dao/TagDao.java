package dao;

import java.util.List;

import model.Tag;

public interface TagDao {

	public Tag getTagById(int id);
	
	public Tag getTagByName(String name);
	
	public Integer save(Tag tag) ;
	
	public List<Tag> getAllTags();
}