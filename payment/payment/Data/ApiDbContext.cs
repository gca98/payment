using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using payment.Models;

namespace payment.Data
{
    public class ApiDbContext : IdentityDbContext
    {
        public virtual DbSet<RefreshToken> RefreshToken{get;set;}

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}