package mn.grapecity.nes.demo.school.entity;

import java.io.Serializable;
import java.util.Date;

public class ClntDemoSchool implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long demoid;
	
	private Long userid;
	private Date startdate;

	private Date enddate;

	private String schoolname;

	private Double gradepoint;

	public ClntDemoSchool() {
		//
	}

	public Long getDemoid() {
		return demoid;
	}

	public void setDemoid(Long demoid) {
		this.demoid = demoid;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getSchoolname() {
		return schoolname;
	}

	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}

	public Double getGradepoint() {
		return gradepoint;
	}

	public void setGradepoint(Double gradepoint) {
		this.gradepoint = gradepoint;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}