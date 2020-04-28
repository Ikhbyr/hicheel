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
    Connection connection = DBconnect.dbConnection();
    public  void PrintAutoParts(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\parkPart.jrxml");
            String query = "Select * from parkparts";
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
    public  void PrintAutoPartsOrder(){
        try {
            jasperDesign = JRXmlLoader.load("reportsFile\\autoParkOrder.jrxml");
            String query = "Select * from orderparts";
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
