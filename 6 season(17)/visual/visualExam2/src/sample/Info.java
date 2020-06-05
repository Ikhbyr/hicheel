package sample;

import java.util.Random;

public class Info {
    String color;
    String english;
    String japan;
    boolean bool;

    public String []listJap = {"ichi -\u4E00","ni -\u4E8C","san -\u4E09","shi -\u56DB","go -\u4E94"};
    Random rand = new Random();
    public Info(String color, String english, String japan, boolean bool) {
        this.color = color;
        this.english = english;
        this.japan = listJap[rand.nextInt(listJap.length)];
        this.bool = bool;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getEnglish() {
        return english;
    }

    public void setEnglish(String english) {
        this.english = english;
    }

    public String getJapan() {
        return japan;
    }

    public void setJapan(String japan) {
        this.japan = listJap[rand.nextInt(listJap.length)];
    }

    public boolean isBool() {
        return checkBool(this.english, this.japan);
    }

    public void setBool(boolean aBoolean) {
        this.bool = aBoolean;
    }

    public boolean checkBool(String en, String jap){
        System.out.println(en + " "+jap);
        switch (en) {
            case "1":
                if (jap.equals("ichi -\u4E00"))
                    return true;
                break;
            case "2":
                if (jap.equals("ni -\u4E8C"))
                    return true;
                break;
            case "3":
                if (jap.equals("san -\u4E09"))
                    return true;
                break;
            case "4":
                if (jap.equals("shi -\u56DB"))
                    return true;
                break;
            case "5":
                if (jap.equals("go -\u4E94"))
                    return true;
                break;
            default: return false;
        }
        return false;
    }
}
