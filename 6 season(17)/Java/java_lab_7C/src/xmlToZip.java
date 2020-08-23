import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class xmlToZip {
    public static void main(String[] args) throws Exception {
        String string = "test" +
                "dsfdsfsf\r\n" +
                "dsfdsfdsf";
        System.out.println("after compress:");
        byte[] compressed = compress(string);
        System.out.println(compressed);
        System.out.println("after decompress:");
        String decomp = decompress(compressed);
        System.out.println(decomp);
    }

    public static byte[] compress(String str) throws Exception {
        if (str == null || str.length() == 0) {
            return null;
        }
        System.out.println("String length : " + str.length());
        ByteArrayOutputStream obj=new ByteArrayOutputStream();
        GZIPOutputStream gzip = new GZIPOutputStream(obj);
        gzip.write(str.getBytes(StandardCharsets.UTF_8));
        gzip.close();

        return obj.toByteArray();
    }

    public static String decompress(byte[] str) throws Exception {
        if (str == null ) {
            return null;
        }

        GZIPInputStream gis = new GZIPInputStream(new ByteArrayInputStream(str));
        BufferedReader bf = new BufferedReader(new InputStreamReader(gis, StandardCharsets.UTF_8));
        StringBuilder outStr = new StringBuilder();
        String line;
        while ((line=bf.readLine())!=null) {
            outStr.append(line);
        }
        System.out.println("Output String lenght : " + outStr.length());
        return outStr.toString();
    }
}