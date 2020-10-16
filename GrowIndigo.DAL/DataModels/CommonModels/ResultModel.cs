using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.CommonModels
{
    public class ResultModel
    {
        public long Id { get; set; }
        public bool Status { get; set; }
        public string Message { get; set; }
        public string RedirectUrl { get; set; }
        public int RegisterRoleId { get; set; }
    }
}
