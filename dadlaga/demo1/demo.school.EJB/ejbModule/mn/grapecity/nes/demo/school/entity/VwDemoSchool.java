package mn.grapecity.nes.demo.school.entity;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "VW_DEMO_SCHOOL")
@NamedQuery(name = "VwDemoSchool.findAll", query = "SELECT c FROM VwDemoSchool c")

public class VwDemoSchool implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "DEMOID")
	private Long demoid;

	@Column(name = "SCHOOLNAME")
	private String schoolname;

	@Column(name = "USERID")
	private Long userid;

	@Column(name = "STARTDATE")
	private Date startdate;

	@Column(name = "ENDDATE")
	private Date enddate;

	@Column(name = "GRADEPOINT")
	private Double gradepoint;

	@Column(name = "SCHOOL_NAME")
	private String school_name;
	
	@Column(name = "SCHOOL_NAME2")
	private String school_name2;
	
	@Column(name = "ORDER_NO")
	private String order_no;
	
	public VwDemoSchool() {
		//
	}

	public Long getDemoid() {
		return demoid;
	}

	public void setDemoid(Long demoid) {
		this.demoid = demoid;
	}

	public String getSchoolname() {
		return schoolname;
	}

	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
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
