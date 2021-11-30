using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace payment.Models
{
    public class PaymentDetailsItem
    {
        public int paymentDetailId{get;set;}
        public string cardOwnerName{get; set;}
        public string cardNumber{get; set;}
        public string expirationDate{get; set;}
        public string securityCode{get; set;}

    }
}