import java.io.*;
import java.util.*;

class DecodeText {
    
    public static void main(String[] args){
        String originalText = "Hello World!";
        String encodedStr = encode(originalText);
        String decodedStr = decode(encodedStr);

        System.out.println("Encoded text: " + encodedStr);
        System.out.println("Decoded text: " + decodedStr);
    }

    public static String decode(String text){
        Base64.Decoder  decoder = Base64.getDecoder();
        byte[] decoded = decoder.decode(text);
        return new String(decoded);
    }

    public static String encode(String text){
        Base64.Encoder encoder = Base64.getEncoder();
        byte[] encoded = encoder.encode(text.getBytes());
        return new String(encoded);
    }

}