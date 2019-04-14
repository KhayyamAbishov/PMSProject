namespace PMSOperation
{
    using Microsoft.AspNet.Identity.EntityFramework;
    using PMSData.DbObjects;
    using System.Configuration;
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;

    public class PMSContext : IdentityDbContext<PMSUser> /*, IdentityRole,
    string, IdentityUserLogin, IdentityUserRole, IdentityUserClaim>*/
    {
        public PMSContext()
            : base(ConfigurationManager.ConnectionStrings["pms-db"].ConnectionString)
        {
        }

        public virtual DbSet<Feature> Features { get; set; }
        public virtual DbSet<Photo> Photos { get; set; }
        public virtual DbSet<Property> Properties { get; set; }
        public virtual DbSet<PropertyAddress> PropertyAddresses { get; set; }
        public virtual DbSet<PropertyFeature> PropertyFeatures { get; set; }
        public virtual DbSet<News> News { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<District> Districts { get; set; }
        public virtual DbSet<Metro> Metroes { get; set; }
        public virtual DbSet<PropertyDetailsView> PropertyDetailsView { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<PMSUser>()
              .HasMany(e => e.Properties)
              .WithRequired(e => e.User)
              .HasForeignKey(e => e.UserId)
              .WillCascadeOnDelete(false);

            modelBuilder.Entity<City>()
               .HasMany(e => e.Districts)
               .WithRequired(e => e.City)
               .WillCascadeOnDelete(false);

            modelBuilder.Entity<City>()
                .HasMany(e => e.Metroes)
                .WithRequired(e => e.City)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<City>()
                .HasMany(e => e.PropertyAddresses)
                .WithRequired(e => e.City)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<District>()
                .HasMany(e => e.PropertyAddresses)
                .WithRequired(e => e.District)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Feature>()
                .HasMany(e => e.PropertyFeatures)
                .WithRequired(e => e.Feature)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Metro>()
                .HasMany(e => e.PropertyAddresses)
                .WithRequired(e => e.Metro)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Photo>()
                .Property(e => e.PhotoSize)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Photo>()
                .Property(e => e.Size)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Property>()
                .Property(e => e.TotalArea)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Property>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Property>()
                .Property(e => e.LandArea)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Property>()
                .HasMany(e => e.Photos)
                .WithRequired(e => e.Property)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Property>()
                .HasMany(e => e.PropertyFeatures)
                .WithRequired(e => e.Property)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PropertyAddress>()
                .HasMany(e => e.Properties)
                .WithRequired(e => e.PropertyAddress)
                .WillCascadeOnDelete(false);

            
        }

        public static PMSContext Create()
        {
            return new PMSContext();
        }
    }
}
