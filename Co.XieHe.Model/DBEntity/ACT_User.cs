using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Co.XieHe.Model
{
    public class ACT_User : CommonEntity
    {
        public int ID { get; set; }
        public string UserName { get; set; }
        public string Phone { get; set; }
        public string PassChar { get; set; }
        public string Mail { get; set; }
        public byte Gender { get; set; }
        public byte Status { get; set; }
        public string InviteCode { get; set; }
        public decimal Point { get; set; }
        public string Remark { get; set; }
    }
}
