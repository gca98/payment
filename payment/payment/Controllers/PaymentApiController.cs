using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using payment.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;

namespace payment.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class PaymentApiController: ControllerBase
    {
        private PaymentDetailsContext _context;
        public PaymentApiController(PaymentDetailsContext context)
        {
            this._context = context;
        }
        [HttpGet(Name = "Get All")]
        public ActionResult<IEnumerable<PaymentDetailsItem>> GetPaymentDetailsItems()
        {
            _context = HttpContext.RequestServices.GetService(typeof(PaymentDetailsContext)) as PaymentDetailsContext;
            return _context.GetAllPaymentDetails();
        }
        [HttpGet("{id}", Name = "Get Where")]
        public ActionResult<IEnumerable<PaymentDetailsItem>> GetPaymentDetailsItemsById(string id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(PaymentDetailsContext)) as PaymentDetailsContext;
            return _context.GetPaymentDetails(id);
        }
        [HttpPost]
        public async Task<IActionResult> CreatePayment([FromBody] PaymentDetailsItem datapyment)
        {
            if (ModelState.IsValid)
            {
                _context = HttpContext.RequestServices.GetService(typeof(PaymentDetailsContext)) as PaymentDetailsContext;
                _context.InsertPaymentDetails(datapyment);
                return new JsonResult("Insert " + datapyment.cardOwnerName);
            }
            else
            {
                return new JsonResult("Data Tidak masuk");
            }
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> EditPayment(int id,[FromBody] PaymentDetailsItem datapyment)
        {
            if (ModelState.IsValid)
            {
                _context = HttpContext.RequestServices.GetService(typeof(PaymentDetailsContext)) as PaymentDetailsContext;
                _context.UpdatePaymentDetails(id,datapyment);
                return new JsonResult("Update Data " +  datapyment.cardOwnerName);
            }
            else
            {
                return new JsonResult("Can't update");
            }
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> HapusPayment(int id)
        {
            if (ModelState.IsValid)
            {
                _context = HttpContext.RequestServices.GetService(typeof(PaymentDetailsContext)) as PaymentDetailsContext;
                _context.DeletePaymentDetails(id);
                return new JsonResult("Deleted Data");
            }
            else
            {
                return new JsonResult("Can't Delete");
            }
        }

    }
}