using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.CommonModels
{
   public  class DTColumn
    {
        public string Data { get; set; }

        public string Name { get; set; }

        public bool Orderable { get; set; }

        public IEnumerable<DTOrder> Order { get; set; }

        public bool Searchable { get; set; }

        public DTSearch Search { get; set; }
    }
}
