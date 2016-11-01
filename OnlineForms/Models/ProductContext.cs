
using System.Data.Entity;

namespace OnlineForms.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("WingtipToys") { }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
    }
}