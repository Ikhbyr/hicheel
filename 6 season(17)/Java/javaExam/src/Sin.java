import java.io.Serializable;

public class Sin implements Serializable {
    int edge;
    double sinValue;

    public Sin(int edge, double sinValue) {
        this.edge = edge;
        this.sinValue = sinValue;
    }

    public int getEdge() {
        return edge;
    }

    public void setEdge(int edge) {
        this.edge = edge;
    }

    public double getSinValue() {
        return sinValue;
    }

    public void setSinValue(double sinValue) {
        this.sinValue = sinValue;
    }
}
