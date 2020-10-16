using GrowIndigo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace GrowIndigo.Controllers
{
    public class EmailController : ApiController
    {

        //public void sendEmailViaWebApi(string recipient, string subject, string message)
        public void sendEmailViaWebApi(EmailModel objEmailModel)
        {
            try
            {
            //    string body = "Hello Admin,<br />" +
            //        "Details of deal are as follows :" +
            //        "1.Order Id: " + objEmailModel.orderId + "" +
            //        "2.Product Id: "+ objEmailModel.ProductId +"" +
            //        "3.CropName : "+ objEmailModel.CropName +"" +
            //        "4.Quantity : "+ objEmailModel.Qty +"<br>" +
            //        "5.Buyer Name: "+objEmailModel.BuyerrName  +"" +
            //        "6.Buyer Contact: "+objEmailModel.BuyerContact  +"" +
            //        "7.Price: "+objEmailModel.Price  +"" +
            //        "8.Service Tax: "+ objEmailModel.ServiceTax +"" +
            //        "9.TotalAmount: "+objEmailModel.TotalAmount +"" +
            //        "10.Payment Status" + objEmailModel.PaymentStatus + "" +
            //        "warm regards ";

               
                string body = " Hello Admin,\r\n";
                body += " Details of deal are as follows \r\n";
                body += "1.Order Id: " + objEmailModel.orderId + "\r\n";
                body += "2.Product Id: " + objEmailModel.ProductId + "\r\n";
                body += "3.CropName : " + objEmailModel.CropName + "\r\n";
                body += "4.Quantity : " + objEmailModel.Qty + "\r\n";
                body += "5.Buyer Name: " + objEmailModel.BuyerrName + "\r\n";
                body += "6.Buyer Contact: " + objEmailModel.BuyerContact + "\r\n";
                body += "7.Price: " + objEmailModel.Price + "\r\n";
                body += "8.Service Tax: " + objEmailModel.ServiceTax + "\r\n";
                body += "9.TotalAmount: " + objEmailModel.TotalAmount + "\r\n";
                body += "10.Payment Status" + objEmailModel.PaymentStatus + "\r\n";
                body += "\r\n";
               body += "warm regards";


              string FromMail = "testsubmitone@gmail.com";
                string subject = "Grow Mandi App : Client Transaction Details ";
               
              
              
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress(FromMail);
                //mail.To.Add(emailTo);
                mail.To.Add("shital.khairnar@growindigo.co.in");
                mail.To.Add("arjun.jagtap@growindigo.co.in");
                mail.Subject = subject;
                mail.Body = body;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("testsubmitone@gmail.com", "qxpdpigctkynmhgu");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }
    }
}
