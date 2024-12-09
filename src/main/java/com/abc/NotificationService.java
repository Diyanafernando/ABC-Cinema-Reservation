package com.abc;

import com.sendgrid.*;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class NotificationService {
    private static final String ACCOUNT_SID = "YOUR_TWILIO_ACCOUNT_SID";
    private static final String AUTH_TOKEN = "YOUR_TWILIO_AUTH_TOKEN";

    public static void sendSMS(String toPhoneNumber, String message) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message.creator(new com.twilio.type.PhoneNumber(toPhoneNumber),
                new com.twilio.type.PhoneNumber("YOUR_TWILIO_PHONE_NUMBER"),
                message).create();
    }

    public static void sendEmail(String toEmail, String subject, String content) throws IOException {
        Email from = new Email("abc@example.com");
        Email to = new Email(toEmail);
        Content body = new Content("text/plain", content);
        Mail mail = new Mail(from, subject, to, body);
        SendGrid sg = new SendGrid("YOUR_SENDGRID_API_KEY");
        Request request = new Request();
        request.method = Method.POST;
        request.endpoint = "mail/send";
        request.body = mail.build();
        sg.api(request);
    }
}
