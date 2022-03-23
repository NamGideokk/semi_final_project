package io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.TimeZone;

public class PasswordUtil {
    public static byte[] genDigest(String plain, Date regDate) throws NoSuchAlgorithmException {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'");
        df.setTimeZone(TimeZone.getTimeZone("UTC"));
        String salt = df.format(regDate);

        return genDigest(plain, salt);
    }

    public static byte[] genDigest(String plain, String salt) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-512");
        String saltedText = String.format("%0128x", new BigInteger(1, md.digest(salt.getBytes(StandardCharsets.UTF_8)))).substring(0, 64) + plain;
        byte[] digest = md.digest(saltedText.getBytes(StandardCharsets.UTF_8));

        return digest;
    }

    public static boolean compare(byte[] digest1, byte[] digest2) {
        Base64.Encoder encoder = Base64.getEncoder();
        String d1 = encoder.encodeToString(digest1);
        String d2 = encoder.encodeToString(digest2);

        return d1.equals(d2);
    }
}
