using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TokoBediaa.Factory
{
    public class productFactory
    {
        public static Product createProduct(int productID, int productTypeID, string productName, int productPrice, int productStock)
        {
            Product product = new Product {
                ProductID = productID,
                ProductTypeID = productTypeID,
                Name = productName,
                Price = productPrice,
                Stock = productStock
            };
            return product;
        }
    }
}