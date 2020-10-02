package mn.grapecity.nes.demo.school.entity;

import java.io.Serializable;
import java.util.Date;

public class ClntDemoLesson implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long userid;
	private String lessonname;
	private float point;
	private Long lessonid;
	private Date seendate;
	
	public ClntDemoLesson() {
		//
	}
	
	
	public Long getUserid() {
		return userid;
	}


	public void setUserid(Long userid) {
		this.userid = userid;
	}


	public String getLessonname() {
		return lessonname;
	}


	public void setLessonname(String lessonname) {
		this.lessonname = lessonname;
	}


	public Long getLessonid() {
		return lessonid;
	}


	public void setLessonid(Long lessonid) {
		this.lessonid = lessonid;
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
