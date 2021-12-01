// using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Threading.Tasks;
// using MySql.Data.MySqlClient;

// namespace payment.Models
// {
//     public class PaymentDetailsContext
//     {
//         public string ConnectionString { get; set; }
//         public PaymentDetailsContext(string connectionString)
//         {
//             this.ConnectionString = connectionString;
//         }
//         private MySqlConnection GetConnection()
//         {
//             return new MySqlConnection(ConnectionString);
//         }

//         public List<PaymentDetailsItem> GetAllPaymentDetails()
//         {
//             List<PaymentDetailsItem> list = new List<PaymentDetailsItem>();
//             using (MySqlConnection conn = GetConnection())
//             {
//                 conn.Open();
//                 MySqlCommand cmd = new MySqlCommand("SELECT * FROM payment_details", conn);
//                 using (MySqlDataReader reader = cmd.ExecuteReader())
//                 {
//                     while (reader.Read())
//                     {
//                         list.Add(new PaymentDetailsItem()
//                         {
//                             paymentDetailId = reader.GetInt32("paymentDetailId"),
//                             cardOwnerName = reader.GetString("cardOwnerName"),
//                             cardNumber = reader.GetString("cardNumber"),
//                             expirationDate = reader.GetString("expirationDate"),
//                             securityCode = reader.GetString("securityCode")
//                         });
//                     }
//                 }
//             }
//             return list;
//         }

//         public List<PaymentDetailsItem> GetPaymentDetails(string id)
//         {
//             List<PaymentDetailsItem> list = new List<PaymentDetailsItem>();
//             using (MySqlConnection conn = GetConnection())
//             {
//                 conn.Open();
//                 MySqlCommand cmd = new MySqlCommand("SELECT * FROM payment_details where paymentDetailId = @id", conn);
//                 cmd.Parameters.AddWithValue("@id", id);
//                 using (MySqlDataReader reader = cmd.ExecuteReader())
//                 {
//                     while (reader.Read())
//                     {
//                         list.Add(new PaymentDetailsItem()
//                         {
//                             paymentDetailId = reader.GetInt32("paymentDetailId"),
//                             cardOwnerName = reader.GetString("cardOwnerName"),
//                             cardNumber = reader.GetString("cardNumber"),
//                             expirationDate = reader.GetString("expirationDate"),
//                             securityCode = reader.GetString("securityCode")
//                         });
//                     }
//                 }
//             }
//             return list;
//         }
//         public string InsertPaymentDetails(PaymentDetailsItem datapayment)
//         {
//             List<PaymentDetailsItem> list = new List<PaymentDetailsItem>();
//             using (MySqlConnection conn = GetConnection())
//             {
//                 conn.Open();
//                 try
//                 {

//                     using (MySqlCommand cmd = new MySqlCommand("INSERT INTO payment_details(cardOwnerName,cardNumber,expirationDate,securityCode) VALUES(@con,@cn,@ed,@sc)", conn))
//                     {
//                         cmd.Parameters.AddWithValue("@con", datapayment.cardOwnerName);
//                         cmd.Parameters.AddWithValue("@cn", datapayment.cardNumber);
//                         cmd.Parameters.AddWithValue("@ed", datapayment.expirationDate);
//                         cmd.Parameters.AddWithValue("@sc", datapayment.securityCode);
//                         cmd.ExecuteNonQuery();
//                         conn.Close();
//                     }
//                     return "MASUK";
//                 }
//                 catch (Exception err)
//                 {
//                     return "";
//                 }
//             }
//         }        public void UpdatePaymentDetails(int id, PaymentDetailsItem datapayment)
//         {
//             List<PaymentDetailsItem> list = new List<PaymentDetailsItem>();
//             using (MySqlConnection conn = GetConnection())
//             {
//                 conn.Open();
//                 try
//                 {
//                     using (MySqlCommand cmd = new MySqlCommand("UPDATE payment_details SET cardOwnerName = @cardOwnerName, cardNumber = @cardNumber, expirationDate = @expirationDate, securityCode = @securityCode where paymentDetailId = @paymentDetailId", conn))
//                     {
//                         cmd.Parameters.AddWithValue("@cardOwnerName", datapayment.cardOwnerName);
//                         cmd.Parameters.AddWithValue("@cardNumber", datapayment.cardNumber);
//                         cmd.Parameters.AddWithValue("@expirationDate", datapayment.expirationDate);
//                         cmd.Parameters.AddWithValue("@securityCode", datapayment.securityCode);
//                         cmd.Parameters.AddWithValue("@paymentDetailId", datapayment.paymentDetailId);
//                         cmd.ExecuteNonQuery();
//                         conn.Close();
//                     }

//                 }
//                 catch
//                 {

//                 }
//             }
//         }

//         public void DeletePaymentDetails(int id)
//         {
//             List<PaymentDetailsItem> list = new List<PaymentDetailsItem>();
//             using (MySqlConnection conn = GetConnection())
//             {
//                 conn.Open();
//                 try
//                 {
//                     using (MySqlCommand cmd = new MySqlCommand("DELETE from payment_details where paymentDetailId = @id", conn))
//                     {
//                         cmd.Parameters.AddWithValue("@id", id);
//                         cmd.ExecuteNonQuery();
//                         conn.Close();
//                     }
//                 }
//                 catch { }
//             }
//         }
//     }
// }