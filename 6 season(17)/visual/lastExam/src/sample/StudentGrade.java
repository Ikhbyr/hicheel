package sample;

import java.io.Serializable;

public class StudentGrade implements Serializable {
    private int studentId;
    private String firstName;
    private String lastName;
    private int attScore;
    private int writeScore;
    private int praScore;
    private int proScore;
    private int preScore;
    private double attEg;
    private double writeEg;
    private double praEg;
    private double proEg;
    private double preEg;
    private double percentAtt;
    private double percentWri;
    private double percentPra;
    private double percentPro;
    private double percentPre;
    private double percentPreGrade;
    private String remarks;

    public StudentGrade(int studentId, String firstName, String lastName, int attScore, double attEg, double percentAtt, int proScore, double proEg, double percentPro, int writeScore, double writeEg, double percentWri, int preScore, double preEg, double percentPre, int praScore, double praEg, double percentPra) {
        this.studentId = studentId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.attScore = attScore;
        this.writeScore = writeScore;
        this.praScore = praScore;
        this.proScore = proScore;
        this.preScore = preScore;
        this.attEg = attEg;
        this.writeEg = writeEg;
        this.praEg = praEg;
        this.proEg = proEg;
        this.preEg = preEg;
        this.percentAtt = percentAtt;
        this.percentWri = percentWri;
        this.percentPra = percentPra;
        this.percentPro = percentPro;
        this.percentPre = percentPre;
        this.percentPreGrade = percentPreGrade;
        this.remarks = remarks;
    }

    public  StudentGrade (){

    }
    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAttScore() {
        return attScore;
    }

    public void setAttScore(int attScore) {
        this.attScore = attScore;
    }

    public int getWriteScore() {
        return writeScore;
    }

    public void setWriteScore(int writeScore) {
        this.writeScore = writeScore;
    }

    public int getPraScore() {
        return praScore;
    }

    public void setPraScore(int praScore) {
        this.praScore = praScore;
    }

    public int getProScore() {
        return proScore;
    }

    public void setProScore(int proScore) {
        this.proScore = proScore;
    }

    public int getPreScore() {
        return preScore;
    }

    public void setPreScore(int preScore) {
        this.preScore = preScore;
    }

    public double getAttEg() {
        return attEg;
    }

    public void setAttEg(double attEg) {
        this.attEg = attEg;
    }

    public double getWriteEg() {
        return writeEg;
    }

    public void setWriteEg(double writeEg) {
        this.writeEg = writeEg;
    }

    public double getPraEg() {
        return praEg;
    }

    public void setPraEg(double praEg) {
        this.praEg = praEg;
    }

    public double getProEg() {
        return proEg;
    }

    public void setProEg(double proEg) {
        this.proEg = proEg;
    }

    public double getPreEg() {
        return preEg;
    }

    public void setPreEg(double preEg) {
        this.preEg = preEg;
    }

    public double getPercentAtt() {
        return percentAtt;
    }

    public void setPercentAtt(double percentAtt) {
        this.percentAtt = percentAtt;
    }

    public double getPercentWri() {
        return percentWri;
    }

    public void setPercentWri(double percentWri) {
        this.percentWri = percentWri;
    }

    public double getPercentPra() {
        return percentPra;
    }

    public void setPercentPra(double percentPra) {
        this.percentPra = percentPra;
    }

    public double getPercentPro() {
        return percentPro;
    }

    public void setPercentPro(double percentPro) {
        this.percentPro = percentPro;
    }

    public double getPercentPre() {
        return percentPre;
    }

    public void setPercentPre(double percentPre) {
        this.percentPre = percentPre;
    }

    public double getPercentPreGrade() {
        return percentPreGrade;
    }

    public void setPercentPreGrade(double percentPreGrade) {
        this.percentPreGrade = percentPreGrade;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}
