package sample;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.swing.JRViewer;

import javax.swing.*;
import java.sql.Connection;

public class Reports extends JFrame {
    JasperDesign jasperDesign;
    Connection connection = dbc.dbConnection();
    public  void PrintEmployee(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\turshilt2.jrxml");
            String query = "Select * from Employees";
            JRDesignQuery jrDesignQuery = new JRDesignQuery();
            jrDesignQuery.setText(query);
            jasperDesign.setQuery(jrDesignQuery);
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,connection);
            JRViewer jrViewer = new JRViewer(jasperPrint);
            jrViewer.setOpaque(true);
            jrViewer.setVisible(true);
            this.add(jrViewer);
            this.setSize(900, 1000);
            this.setVisible(true);
            System.out.println("Good job");
        } catch (JRException e) {
            e.printStackTrace();
        }
    }
    public void printUndergraduateStu(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\underStudent.jrxml");
            String query = "Select * from undergraduatestudents";
            JRDesignQuery jrDesignQuery = new JRDesignQuery();
            jrDesignQuery.setText(query);
            jasperDesign.setQuery(jrDesignQuery);
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,connection);
            JRViewer jrViewer = new JRViewer(jasperPrint);
            jrViewer.setOpaque(true);
            jrViewer.setVisible(true);
            this.add(jrViewer);
            this.setSize(900, 1000);
            this.setVisible(true);
            System.out.println("Good job");
        } catch (JRException e) {
            e.printStackTrace();
        }
    }
    public void printUndergraduateMajor(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\underMajor.jrxml");
            String query = "Select * from undergraduatemajors";
            JRDesignQuery jrDesignQuery = new JRDesignQuery();
            jrDesignQuery.setText(query);
            jasperDesign.setQuery(jrDesignQuery);
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,connection);
            JRViewer jrViewer = new JRViewer(jasperPrint);
            jrViewer.setOpaque(true);
            jrViewer.setVisible(true);
            this.add(jrViewer);
            this.setSize(900, 1000);
            this.setVisible(true);
            System.out.println("Good job");
        } catch (JRException e) {
            e.printStackTrace();
        }
    }
    public void printGraduateStu(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\gradStudent.jrxml");
            String query = "Select * from Graduatestudents";
            JRDesignQuery jrDesignQuery = new JRDesignQuery();
            jrDesignQuery.setText(query);
            jasperDesign.setQuery(jrDesignQuery);
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,connection);
            JRViewer jrViewer = new JRViewer(jasperPrint);
            jrViewer.setOpaque(true);
            jrViewer.setVisible(true);
            this.add(jrViewer);
            this.setSize(900, 1000);
            this.setVisible(true);
            System.out.println("Good job");
        } catch (JRException e) {
            e.printStackTrace();
        }
    }
    public void printGraduateMajor(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\gradMajor.jrxml");
            String query = "Select * from graduatemajors";
            JRDesignQuery jrDesignQuery = new JRDesignQuery();
            jrDesignQuery.setText(query);
            jasperDesign.setQuery(jrDesignQuery);
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,connection);
            JRViewer jrViewer = new JRViewer(jasperPrint);
            jrViewer.setOpaque(true);
            jrViewer.setVisible(true);
            this.add(jrViewer);
            this.setSize(900, 1000);
            this.setVisible(true);
            System.out.println("Good job");
        } catch (JRException e) {
            e.printStackTrace();
        }
    }
}