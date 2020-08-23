import java.io.*;
import java.util.Base64;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class xmlToBase64 {
    public static void main(String[] args) {
        String originalInput = "<root> dsfd </root>";
        String encodedString = Base64.getEncoder().encodeToString(originalInput.getBytes());
        byte[] decodedBytes = Base64.getDecoder().decode(encodedString);
        String decodedString = new String(decodedBytes);
        System.out.println(hexStringToByteArray(encodedString));
        
        try {
            byte [] hell = compressString("werddsafaosjf ljl;dsfj d;lasjf");
            System.out.println(hell);
            System.out.println(uncompressString(hell));

        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }
    public static byte[] hexStringToByteArray(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i+1), 16));
        }
        return data;
    }
    public static byte[] compressString(String srcTxt)
            throws IOException {
        ByteArrayOutputStream rstBao = new ByteArrayOutputStream();
        GZIPOutputStream zos = new GZIPOutputStream(rstBao);
        zos.write(srcTxt.getBytes("UTF-8"));
        byte[] bytes = rstBao.toByteArray();
        zos.close();
        return bytes;
    }

    public static String uncompressString(byte [] zippedBase64Str)
            throws IOException {
        String result = "";
        GZIPInputStream zi = null;
        String readed;
        zi = new GZIPInputStream(new ByteArrayInputStream(zippedBase64Str));
        BufferedReader bf = new BufferedReader(new InputStreamReader(zi, "UTF-8"));
        while ((readed = bf.readLine()) != null) {
            result += readed;
        }
        return result;
    }
}
