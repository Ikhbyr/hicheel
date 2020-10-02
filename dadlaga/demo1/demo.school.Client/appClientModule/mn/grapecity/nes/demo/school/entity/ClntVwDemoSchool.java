package mn.grapecity.nes.demo.school.entity;

import java.io.Serializable;
import java.util.Date;

public class ClntVwDemoSchool implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long demoid;
	
	private Long userid;

	private Date startdate;

	private Date enddate;

	private String schoolname;

	private Double gradepoint;

	private String school_name;
	
	private String school_name2;
	
	private String order_no;
	public ClntVwDemoSchool() {
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
	public String getSchool_name() {
		return school_name;
	}
	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
	public String getSchool_name2() {
		return school_name2;
	}
	public void setSchool_name2(String school_name2) {
		this.school_name2 = school_name2;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}
