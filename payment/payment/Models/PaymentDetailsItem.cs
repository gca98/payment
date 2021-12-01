using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace payment.Models
{
    public class PaymentDetailsItem
    {
        [Key]
        public int paymentDetailId{get;set;}
        public string cardOwnerName{get; set;}
        public string cardNumber{get; set;}
        public string expirationDate{get; set;}
        public string securityCode{get; set;}

    }
}