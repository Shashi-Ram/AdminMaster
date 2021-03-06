using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace AdminMaster.Models
{
    public class MSDBContext : DbContext
    {
        public MSDBContext():base(){}
        public DbSet<Tbl_Users> Tbl_Users { get; set; }
        public DbSet<Verified_Account> Verified_Account { get; set; }
        public DbSet<Books> books{ get; set; }
        public DbSet<Author> authors{ get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(DBConnection.ConnectionStr);
        }
        
        
    }
}
