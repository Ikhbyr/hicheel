package mn.grapecity.nes.demo.school;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import mn.grapecity.nes.CommonRemote;
import mn.grapecity.nes.Condgen;
import mn.grapecity.nes.Func;
import mn.grapecity.nes.NesException;
import mn.grapecity.nes.demo.school.entity.ClntDemoLesson;
import mn.grapecity.nes.demo.school.entity.ClntDemoSchool;
import mn.grapecity.nes.demo.school.entity.ClntVwDemoSchool;
import mn.grapecity.nes.demo.school.entity.DemoLesson;
import mn.grapecity.nes.demo.school.entity.DemoSchool;
import mn.grapecity.nes.demo.school.entity.VwDemoSchool;
import mn.grapecity.nes.entity.clnt.Clntfilterfield;

@Stateless
@LocalBean
public class DemoParam implements SchoolParamRemote {

	@PersistenceContext
	EntityManager em;

	Condgen cg;

	@EJB
	CommonRemote com;

	public DemoParam() {
		//
	}

	public List<ClntVwDemoSchool> selectDemoSchool(Clntfilterfield[] filter, int startPosition, int count)
			throws NesException {
		cg = new Condgen();
		String[] possFields = { "DEMOID", "USERID", "SCHOOLNAME", "STARTDATE", "ENDDATE", "GRADEPOINT","SCHOOL_NAME","SCHOOL_NAME2","ORDER_NO"};
		cg.addPossField(possFields);
		List<VwDemoSchool> e = null;

		Clntfilterfield ff = new Clntfilterfield();
		ArrayList<Clntfilterfield> lstFilter = new ArrayList<Clntfilterfield>();
		lstFilter.addAll(Arrays.asList(filter));
		lstFilter.add(ff);

		String[] orderColumns = { "SCHOOLNAME ASC" };
		e = cg.getData(lstFilter, VwDemoSchool.class, startPosition, count, em, orderColumns);
		return cloneVw2DemoSchool(e);
	}
	public List<ClntDemoSchool> selectDemoSchool1(Clntfilterfield[] filter, int startPosition, int count)
			throws NesException {
		cg = new Condgen();
		String[] possFields = { "DEMOID", "USERID", "SCHOOLNAME", "STARTDATE", "ENDDATE", "GRADEPOINT"};
		cg.addPossField(possFields);
		List<DemoSchool> e = null;

		Clntfilterfield ff = new Clntfilterfield();
		ArrayList<Clntfilterfield> lstFilter = new ArrayList<Clntfilterfield>();
		lstFilter.addAll(Arrays.asList(filter));
		lstFilter.add(ff);

		String[] orderColumns = { "DEMOID ASC" };
		e = cg.getData(lstFilter, DemoSchool.class, startPosition, count, em, orderColumns);
		return cloneVwDemoSchool(e);
	}
	
	public List<ClntDemoLesson> selectDemoLesson(Clntfilterfield[] filters, int startPosition, int count) 
			throws NesException {
		cg = new Condgen();

		String[] possFields = { "LESSONID", "USERID", "LESSONNAME", "POINT", "SEENDATE" };
		cg.addPossField(possFields);
		List<DemoLesson> e = null;
		Clntfilterfield ff = new Clntfilterfield();
		ArrayList<Clntfilterfield> lstFilter = new ArrayList<Clntfilterfield>();
		lstFilter.addAll(Arrays.asList(filters));
		lstFilter.add(ff);

		String[] orderColumns = { "USERID ASC" };
		e = cg.getData(lstFilter, DemoLesson.class, startPosition, count, em, orderColumns);
		return cloneVwDemoLesson(e);
	}
	
	public Long insertDemoSchool(ClntDemoSchool p) throws NesException {
		Long demoId = com.getSeq("DEMO_SCHOOL");
		DemoSchool c = new DemoSchool();
		c.setDemoid(demoId);
		c.setUserid(p.getUserid());
		c.setSchoolname(p.getSchoolname());
		c.setStartdate(p.getStartdate());
		c.setEnddate(p.getEnddate());
		c.setGradepoint(p.getGradepoint());
		em.persist(c);
		return demoId;
	}

	public void updateDemoSchool(ClntDemoSchool p) throws NesException {
		DemoSchool c = em.find(DemoSchool.class, p.getDemoid());
		if (c == null) {
			//
			Func.throwNeX(49999020, "DEMOID", p.getDemoid());
		}
		c.setDemoid(p.getDemoid());
		c.setUserid(p.getUserid());
		c.setSchoolname(p.getSchoolname());
		c.setStartdate(p.getStartdate());
		c.setEnddate(p.getEnddate());
		c.setGradepoint(p.getGradepoint());
	}

	public void deleteDemoSchool(Long demoId) throws NesException {
		DemoSchool c = em.find(DemoSchool.class, demoId);
		if (c == null) {
			Func.throwNeX(49999020, "DEMOID", demoId);
		}
		em.remove(c);
	}

	public ClntDemoSchool detailDemoSchool(Long demoId) throws NesException {
		DemoSchool c = null;
		c = em.find(DemoSchool.class, demoId);
		if (c == null) {
			Func.throwNeX(49999020, "DEMOID", demoId);
		}
		return cloneVwDemoSchool(c);
	}

	public List<ClntDemoSchool> cloneVwDemoSchool(List<DemoSchool> list) {
		List<ClntDemoSchool> c1 = new ArrayList<ClntDemoSchool>();
		if (!Func.emptyOrNull(list))
			for (DemoSchool c : list)
				c1.add(cloneVwDemoSchool(c));
		return c1;
	}
	
	public List<ClntVwDemoSchool> cloneVw2DemoSchool(List<VwDemoSchool> list) {
		List<ClntVwDemoSchool> c1 = new ArrayList<ClntVwDemoSchool>();
		if (!Func.emptyOrNull(list))
			for (VwDemoSchool c : list)
				c1.add(cloneVw2DemoSchool(c));
		return c1;
	}

	public ClntDemoSchool cloneVwDemoSchool(DemoSchool c) {
		ClntDemoSchool c1 = new ClntDemoSchool();
		c1.setDemoid(c.getDemoid());
		c1.setUserid(c.getUserid());
		c1.setSchoolname(c.getSchoolname());
		c1.setStartdate(c.getStartdate());
		c1.setEnddate(c.getEnddate());
		c1.setGradepoint(c.getGradepoint());

		return c1;
	}

	public ClntVwDemoSchool cloneVw2DemoSchool(VwDemoSchool c) {
		ClntVwDemoSchool c1 = new ClntVwDemoSchool();
		c1.setDemoid(c.getDemoid());
		c1.setUserid(c.getUserid());
		c1.setSchoolname(c.getSchoolname());
		c1.setStartdate(c.getStartdate());
		c1.setEnddate(c.getEnddate());
		c1.setGradepoint(c.getGradepoint());
		c1.setSchool_name(c.getSchool_name());
		c1.setSchool_name2(c.getSchool_name2());
		return c1;
	}
	protected List<ClntDemoSchool> cloneVwDemoSchoolList(List<DemoSchool> list) {
		List<ClntDemoSchool> c1 = new ArrayList<>();
		if (!Func.emptyOrNull(list))
			for (DemoSchool c : list)
				c1.add(cloneVwDemoSchool(c));
		return c1;
	}
	protected List<ClntVwDemoSchool> cloneVw2DemoSchoolList(List<VwDemoSchool> list) {
		List<ClntVwDemoSchool> c1 = new ArrayList<>();
		if (!Func.emptyOrNull(list))
			for (VwDemoSchool c : list)
				c1.add(cloneVw2DemoSchool(c));
		return c1;
	}

	public Long insertDemoLesson(ClntDemoLesson p) throws NesException {

		Long lessonId = com.getSeq("DEMO_SCHOOL");
		DemoLesson c = new DemoLesson();
		c.setLessonid(lessonId);
		c.setUserid(p.getUserid());
		c.setLessonname(p.getLessonname());
		c.setSeendate(p.getSeendate());
		c.setPoint(p.getPoint());
		em.persist(c);
		return lessonId;
	}

	public void updateDemoLesson(ClntDemoLesson p) throws NesException {

		DemoLesson c = em.find(DemoLesson.class, p.getLessonid());

		if (c == null) {
			Func.throwNeX(49999020, "LESSONID", p.getLessonid());
		}

		c.setUserid(p.getUserid());
		c.setLessonname(Func.toStdStr(p.getLessonname()));
		c.setPoint((p.getPoint()));
		c.setSeendate(p.getSeendate());
	}

	public void deleteDemoLesson(Long lessonid) throws NesException {

		DemoLesson c = em.find(DemoLesson.class, lessonid);

		if (c == null) {
			Func.throwNeX(49999020, "LESSONID", lessonid);
		}

		em.remove(c);
	}

	public ClntDemoLesson detailDemoLesson(Long lessonid) throws NesException {

		DemoLesson c = em.find(DemoLesson.class, lessonid);

		if (c == null) {
			Func.throwNeX(49999020, "LESSONID", lessonid);
		}

		ClntDemoLesson result = Func.cloneToClnt(c, ClntDemoLesson.class);

		return result;
	}
	
	public ClntDemoLesson cloneVwDemoLesson(DemoLesson c) {
		ClntDemoLesson c1 = new ClntDemoLesson();
		c1.setLessonid(c.getLessonid());
		c1.setUserid(c.getUserid());
		c1.setLessonname(c.getLessonname());
		c1.setSeendate(c.getSeendate());
		c1.setPoint(c.getPoint());

		return c1;
	}
	
	protected List<ClntDemoLesson> cloneVwDemoLesson(List<DemoLesson> list) {
		List<ClntDemoLesson> c1 = new ArrayList<>();
		if (!Func.emptyOrNull(list))
			for (DemoLesson c : list)
				c1.add(cloneVwDemoLesson(c));
		return c1;
	}

}
