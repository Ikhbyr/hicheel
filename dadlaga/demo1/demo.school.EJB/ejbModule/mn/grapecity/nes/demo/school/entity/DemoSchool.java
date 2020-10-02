package mn.grapecity.nes.demo.school.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "DEMO_SCHOOL")
@NamedQuery(name = "DemoSchool.findAll", query = "SELECT c FROM DemoSchool c")
public class DemoSchool implements Serializable {
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

	public DemoSchool() {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

}