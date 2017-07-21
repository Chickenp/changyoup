package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.TagDao;
import model.Routetag;
import model.Tag;

public class TagDaoImpl extends HibernateDaoSupport implements TagDao {

	public Tag getTagById(int id){
		@SuppressWarnings("unchecked")
		List<Tag> tags = (List<Tag>) getHibernateTemplate().find(
				"from Tag as t where t.tagid=?", id);
		Tag tag = tags.size() > 0 ? tags.get(0) : null;
		return tag;
	};
    
	
	public Tag getTagByName(String name){
		@SuppressWarnings("unchecked")
		List<Tag> tags = (List<Tag>) getHibernateTemplate().find(
				"from Tag as t where t.tagname=?", name);
		Tag tag = tags.size() > 0 ? tags.get(0) : null;
		return tag;
	};
	
	public Integer save(Tag tag) {
        return (Integer) getHibernateTemplate().save(tag);
    }
	
	public List<Tag> getAllTags(){
		@SuppressWarnings("unchecked")
		List<Tag> tags = (List<Tag>)getHibernateTemplate().find("from Tag");
		return tags;
	}
}