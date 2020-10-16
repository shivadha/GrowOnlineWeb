using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.CommonModels
{
    public class DTParameterModel
    {
        public int Draw { get; set; }

        public int Start { get; set; }

        public int Length { get; set; }

        public DTSearch Search { get; set; }

        public IEnumerable<DTOrder> Order { get; set; }

        public IEnumerable<DTColumn> Columns { get; set; }
        public ExtraParam Extra_param { get; set; }

    }
}
