package io.ibex.apiauth;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BcryptPasswordGenerator {


    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        System.out.println(encoder.encode("INSERT-PASSWORD-HERE"));

        //resulting hash should look like this: $2a$10$YKpcfZc4s1K50.L4RJ1ox.ffv5dfYtL7mE8h6Xc4JPvZNiKhAQFQy

    }
}
