package com.abc;

import com.sendgrid.*;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;


import java.io.IOException;

public class NotificationService {
    public static void sendSMS(String phoneNumber, String message) {
        Twilio.init("ACCOUNT_SID", "AUTH_TOKEN");
        Message.creator(
                new com.twilio.type.PhoneNumber(phoneNumber),
                new com.twilio.type.PhoneNumber("YOUR_TWILIO_NUMBER"),
                message
        ).create();
    }

    public static void sendEmail(String toEmail, String subject, String content) throws IOException {
        Email from = new Email("your_email@example.com");
        Email to = new Email(toEmail);
        Content emailContent = new Content("text/plain", content);
        Mail mail = new Mail(from, subject, to, emailContent);

        SendGrid sg = new SendGrid("SENDGRID_API_KEY");
        Request request = new Request();

        request.setMethod(Method.POST);
        request.setEndpoint("mail/send");
        request.setBody(mail.build());

        sg.api(request);
    }
}
