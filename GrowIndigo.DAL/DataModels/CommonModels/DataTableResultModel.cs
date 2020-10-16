using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.CommonModels
{
    public class DataTableResultModel<T>
    {
        public int draw { get; set; }
        public int recordsTotal { get; set; }
        public int recordsFiltered { get; set; }

        public int sEcho { get; set; }

        public List<T> data { get; set; }

        public object additionalData { get; set; }

        //public int sumTotalAmount { get; set; }
        public decimal sumTotalAmount { get; set; }
        public decimal sumTotalDiscountAmount { get; set; }
        public decimal sumAllTotalAmount { get; set; }
        //public int sumAllTotalAmount { get; set; }
    }
}
