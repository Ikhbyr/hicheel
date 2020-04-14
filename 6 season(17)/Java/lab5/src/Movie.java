import java.io.Serializable;

public class Movie implements Serializable {
    String name;
    int created_year;
    String created_location;
    String type;
    double cost;
    Movie(String name, int created_year, String created_location, String type, double cost){
        this.name = name;
        this.cost = cost;
        this.created_location = created_location;
        this.created_year = created_year;
        this.type = type;
    }

    public int getCreated_year() {
        return created_year;
    }

    public double getCost() {
        return cost;
    }

    public String getCreated_location() {
        return created_location;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public void setCreated_location(String created_location) {
        this.created_location = created_location;
    }

    public void setCreated_year(int created_year) {
        this.created_year = created_year;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getInfo() {
        return ("Movie title: "+this.getName()+"\nCreated year: " +this.getCreated_year()+"\nCreated loacation: " +this.getCreated_location() + "\nType: "+this.getType()+"\nCost: "+this.getCost());
    }
}
