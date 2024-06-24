using AnimalAPI.Models;
using Microsoft.EntityFrameworkCore;

public class AnimalContext : DbContext
{
    public AnimalContext(DbContextOptions<AnimalContext> options) : base(options) { }

    public DbSet<Animal> Animals { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Animal>().HasKey(a => a.Id);
    }
}