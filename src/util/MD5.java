package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
    public static String toMD5(String text){
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            byte[] digest = md5.digest(text.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < digest.length; ++i)
                sb.append(Integer.toHexString((digest[i] & 0xFF) | 0x100).substring(1,3));
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "No Such Algorithm";
        }
    }

    public static void main(String[] args) {
        System.out.println(MD5.toMD5("123"));
    }
}
