using TokoBediaa.DataModel;
using TokoBediaa.Factory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TokoBediaa.Repository
{
    public class PTRepository
    {
        private static DatabaseEntities2 db = new DatabaseEntities2();

        public static ProductType getID(int prodTID)
        {
            return db.ProductTypes.Where(obj => obj.ProductTypeID == prodTID).FirstOrDefault();
        }
        public static ProductType getName(string ptName)
        {
            return db.ProductTypes.Where(obj => obj.Name == ptName).FirstOrDefault();
        }
        public static List<ProductType> getViewPT()
        {
            return db.ProductTypes.ToList();
        }

        public static void createProductType(int PTID, string PTName, string PTDesc)
        {
            ProductType insertPT = productTypeFactory.createProductType(PTID, PTName, PTDesc);

            db.ProductTypes.Add(insertPT);
            db.SaveChanges();
        }
        public static void updateProductType(int PTID, string PTName, string PTDesc)
        {
            ProductType check = db.ProductTypes.Where(obj => obj.ProductTypeID == PTID).FirstOrDefault();

            if (check != null)
            {
                check.Name = PTName;
                check.Description = PTDesc;

                db.SaveChanges();
            }
        }
        public static void deleteProductType(int PTID)
        {
            ProductType check = db.ProductTypes.Where(obj => obj.ProductTypeID == PTID).FirstOrDefault();

            if(check != null)
            {
                db.ProductTypes.Remove(check);
                db.SaveChanges();
            }
        }
    }
}