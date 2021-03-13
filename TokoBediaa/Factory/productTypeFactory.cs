using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TokoBediaa.Factory
{
    public class productTypeFactory
    {
        public static ProductType createProductType(int PTID, string PTName, string PTDesc)
        {
            ProductType productType = new ProductType
            {
                ProductTypeID = PTID,
                Name = PTName,
                Description = PTDesc
            };
            return productType;
        }
    }
}