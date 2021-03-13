using TokoBediaa.Factory;
using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TokoBediaa.Repository
{
    public class productRepository
    {
        private static DatabaseEntities2 db = new DatabaseEntities2();

        public static List<Product> getRandProducts()
        {
            return db.Products.OrderBy(obj => Guid.NewGuid()).Take(5).ToList(); 
        }

        public static List<Product> getViewProducts()
        {
            return db.Products.ToList();
        }
        public static Product getID(int prodID)
        {
            return db.Products.Where(obj => obj.ProductID == prodID).FirstOrDefault();
        }
        public static void insertProduct(int prodID, int prodTypeID, string prodName, int prodPrice, int prodStock)
        {
            Product insert = productFactory.createProduct(prodID, prodTypeID, prodName, prodPrice, prodStock);
            DatabaseEntities2 db = new DatabaseEntities2();

            db.Products.Add(insert);
            db.SaveChanges();
        }

        public static void updateProduct(int prodID, int prodTypeID, string prodName, int prodPrice, int prodStock)
        {
            Product check = db.Products.Where(obj => obj.ProductID == prodID).FirstOrDefault();

            if(check != null)
            {
                check.Name = prodName;
                check.Price = prodPrice;
                check.Stock = prodStock;

                db.SaveChanges();
            }
        }

        public static void deleteProduct(int prodID)
        {
            Product check = db.Products.Where(obj => obj.ProductID == prodID).FirstOrDefault();

            if(check != null)
            {
                db.Products.Remove(check);
                db.SaveChanges();
            }
        }
    }
}
