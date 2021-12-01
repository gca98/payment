using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using payment.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using payment.Data;
using Microsoft.EntityFrameworkCore;

namespace payment.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class PaymentApiController: ControllerBase
    {
        private ApiDbContext _context;
        public PaymentApiController(ApiDbContext context)
        {
            this._context = context;
        }
        [HttpGet(Name = "Get All")]
        public async Task<ActionResult> GetPaymentDetailsItems()
        {
            var pd = await _context.paymentdetail.ToListAsync();
            return Ok(pd);
        }
        [HttpGet("{id}",Name = "Get Where")]
        public async Task<ActionResult> GetPaymentDetailsById(int id)
        {
            var pd = await _context.paymentdetail.FirstOrDefaultAsync(x=>x.paymentDetailId == id);
            if (pd == null)
            {
                return NotFound();
            }
            return Ok(pd);
        }
        
        [HttpPost]
        public async Task<ActionResult> InsertPaymentDetail(PaymentDetailsItem datapyment)
        {
            if (ModelState.IsValid)
            {
                await _context.paymentdetail.AddAsync(datapyment);
                await _context.SaveChangesAsync();
                return Ok($"Insert \nData\ncardOwnerName = {datapyment.cardOwnerName}\ncardNumber = {datapyment.cardNumber}\nexpirationDate = {datapyment.expirationDate}\nsecurityCode = {datapyment.securityCode}");
            }
            else
            {
                return new JsonResult("Data Tidak masuk");
            }
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateItem(int id, PaymentDetailsItem datapyment)
        {
            if (id != datapyment.paymentDetailId)
            {
                return BadRequest();
            }
            var existItem = await _context.paymentdetail.FirstOrDefaultAsync(x=>x.paymentDetailId==id);

            if (existItem == null)
            {
                return NotFound();
            }
            existItem.cardOwnerName = datapyment.cardOwnerName;
            existItem.cardNumber = datapyment.cardNumber;
            existItem.expirationDate = datapyment.expirationDate;
            existItem.securityCode = datapyment.securityCode;

            await _context.SaveChangesAsync();

            return Ok($"Update \nData\ncardOwnerName = {existItem.cardOwnerName}\ncardNumber = {existItem.cardNumber}\nexpirationDate = {existItem.expirationDate}\nsecurityCode = {existItem.securityCode}");
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteItem(int id)
        {
            var existItem = await _context.paymentdetail.FirstOrDefaultAsync(x=>x.paymentDetailId==id);

            if (existItem == null)
            {
                return NotFound();
            }
            _context.paymentdetail.Remove(existItem);
            await _context.SaveChangesAsync();
            return Ok($"Deleted \nData\ncardOwnerName = {existItem.cardOwnerName}\ncardNumber = {existItem.cardNumber}\nexpirationDate = {existItem.expirationDate}\nsecurityCode = {existItem.securityCode}");
            
        }

    }
}