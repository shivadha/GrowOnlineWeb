using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels
{
    public sealed class ExtraParam
    {
        public System.Guid? Guid { get; set; }

        public string unitName { get; set; }

        public string StringStatus { get; set; }

        public long PartnerStatus { get; set; }

        public Nullable<bool> Status { get; set; }



        public bool TemplateStatus { get; set; }

        public string FirstName { get; set; }
        public string DocumentName { get; set; }
        public string Title { get; set; }
        public string IPAddress { get; set; }
        public bool IsDrafted { get; set; }
        public bool IsPublished { get; set; }
        public bool IsSubscribed { get; set; }
        public bool IsDeleted { get; set; }
        public string TransactionId { get; set; }


        public int SearchBy { get; set; }
        public string SearchText { get; set; }
        public string Fromdate { get; set; }
        public string Todate { get; set; }
        public int TransactionTypeId { get; set; }
        public int DocumentStatusId { get; set; }

        public bool SubscriptionStatus { get; set; }
    }
}
