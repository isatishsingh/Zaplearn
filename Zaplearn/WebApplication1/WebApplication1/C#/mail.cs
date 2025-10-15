			string to = "chauhansatish978@gmail.com"; //To address    
            string from = "zaplearn.web@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);
            string mailbody = "This mail is send from Zaplearn. I have made this mail feature.";
            message.Subject = "I am testing asp vb.net to send e-mails.";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("zaplearn.web@gmail.com", "tymuhreyhpqnqamx");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }