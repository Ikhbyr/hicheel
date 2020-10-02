package mn.grapecity.nes.demo.school.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "DEMO_LESSON")
@NamedQuery(name = "DemoLesson.findAll", query = "SELECT c FROM DemoLesson c")
public class DemoLesson implements Serializable{
	
	public DemoLesson() {
		//
	}
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "LESSONID")
	private Long lessonid;

	@Column(name = "LESSONNAME")
	private String lessonname;

	@Column(name = "USERID")
	private Long userid;

	@Column(name = "SEENDATE")
	private Date seendate;

	@Column(name = "POINT")
	private float point;

	

	public Long getLessonid() {
		return lessonid;
	}

	public void setLessonid(Long lessonid) {
		this.lessonid = lessonid;
	}

	public String getLessonname() {
		return lessonname;
	}

	public void setLessonname(String lessonname) {
		this.lessonname = lessonname;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Date getSeendate() {
		return seendate;
	}

	public void setSeendate(Date seendate) {
		this.seendate = seendate;
	}

	public float getPoint() {
		return point;
	}

	public void setPoint(float point) {
		this.point = point;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
