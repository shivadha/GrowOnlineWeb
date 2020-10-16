using GrowIndigo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.Utilities.EmailFunction
{
   public  class EmailFunction 
    {
        public bool SendEmailAfterOrderPlaced(EmailViewModel objEmailModel, string Ordertype = "")         
        {
            string FromMail = "";
            string subject = "";
            string body = "";
         

                body = @"<div style='font-family:Bookman Old Style;font-size:16px'>Dear Sir , <br><br>Greeting for the day!! <br><br>Please find below the details for the new orders received for your products on 'Grow Online'. <br><br><table border='1' cellspacing='5' cellpadding='5'><tbody><tr><td>Order ID :</td><td>"+ objEmailModel .OrderId+ "</td></tr><tr><td>Firm Name : </td><td>" + objEmailModel.FirmName + " </td></tr><tr><td>Retailer Name : </td><td>" + objEmailModel.RetailerName + "</td></tr><tr><td>Shipping Address : </td><td>" + objEmailModel.ShippingAddress + " </td></tr><tr><td>Mobile Number : </td><td>" + objEmailModel.MobileNumber + "</td></tr><tr><td>Product : </td><td>"+objEmailModel.Product+"</td></tr><tr><td>Amount : </td><td>" + objEmailModel.Amount + "</td></tr><tr><td>Payment Mode : </td><td>" + objEmailModel.PaymentMode + "</td></tr><tr><td>Order Date : </td><td>" + objEmailModel.OrderDate + "</td></tr></tbody></table><br><p>Please click on the link <a href='http://products.growindigo.co.in/order_received.aspx?OrderID=1337' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://products.growindigo.co.in/order_received.aspx?OrderID%3D1337&amp;source=gmail&amp;ust=1597471273417000&amp;usg=AFQjCNG-Zxi5pv494asZkJv6hiDI2ThRgw'>here</a> to acknowledge the receipt of the same. <br>If you have any queries, please feel free to contact us on <a href='mailto:Info@GrowIndigo.co.in' target='_blank'>Info@GrowIndigo.co.in</a> or 9607911377.</p><br>Thanks &amp; Regards,<br><br><img src='https://ci6.googleusercontent.com/proxy/qIoaW7zkOTE_R5UPesCDW8wbETcpgHn3oEb0QN0S1ZyjH4iEtWHK-3JOTeSmhMRzX87AieDtLIFXhDYmDJL1XhVrk9AmTuKIE38=s0-d-e1-ft#http://www.growindigo.co.in/images/logos/mailfooter.png' class='CToWUd'><br>Grow Indigo Private Limited<br><br></div>";
             


                FromMail = "developer@growindigo.co.in";
                subject = "Grow Online Web : Order Detail Summary ";

            
          
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(FromMail);

         

            //for Developer
          
            mail.To.Add("abhinavpratap.rao @growindigo.co.in");
            mail.To.Add("rahul.dhande@growindigo.co.in");
            mail.To.Add("arjun.jagtap@growindigo.co.in");

            //for Test
            mail.To.Add("shivam.dhagat@systematixindia.com");


            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("developer@growindigo.co.in", "phoansnuhfutodwq");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            return true;

            
        }
    }
}
