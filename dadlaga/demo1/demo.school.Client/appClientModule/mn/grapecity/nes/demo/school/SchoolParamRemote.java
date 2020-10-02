package mn.grapecity.nes.demo.school;

import java.util.List;

import javax.ejb.Local;

import mn.grapecity.nes.NesException;
import mn.grapecity.nes.demo.school.entity.ClntDemoLesson;
import mn.grapecity.nes.demo.school.entity.ClntDemoSchool;
import mn.grapecity.nes.demo.school.entity.ClntVwDemoSchool;
import mn.grapecity.nes.entity.clnt.Clntfilterfield;

@Local
public interface SchoolParamRemote {
	// DemoSchool
	public List<ClntVwDemoSchool> selectDemoSchool(Clntfilterfield[] filter, int startPosition, int count)
			throws NesException;

	public Long insertDemoSchool(ClntDemoSchool p) throws NesException;

	public void updateDemoSchool(ClntDemoSchool p) throws NesException;

	public void deleteDemoSchool(Long demoId) throws NesException;

	public ClntDemoSchool detailDemoSchool(Long demoId) throws NesException;


	public List<ClntDemoSchool> selectDemoSchool1(Clntfilterfield[] filter, int startPosition, int count)
			throws NesException;

	public List<ClntDemoLesson> selectDemoLesson(Clntfilterfield[] filter, int startPosition, int count) throws NesException;

	public Long insertDemoLesson(ClntDemoLesson p) throws NesException;

	public void updateDemoLesson(ClntDemoLesson p) throws NesException;

	public void deleteDemoLesson(Long lessonid) throws NesException;

	public ClntDemoLesson detailDemoLesson(Long lessonid) throws NesException;

}
