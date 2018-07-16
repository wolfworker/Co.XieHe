using Co.XieHe.Business;
using Co.XieHe.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace Co.XieHe.Service.Controllers
{
    public class UserController : BaseController
    {
        public UserBiz userBiz { get; set; } = new UserBiz();

        [HttpGet]
        public HttpResponseMessage QueryAll()
        {
            var result = userBiz.QueryAll<ACT_User>();
            return ResponseToJson(result);
        }

        [HttpGet]
        // GET: api/UserApi/5
        public HttpResponseMessage QueryById(int id)
        {
            var result = userBiz.Query<ACT_User>(id);
            return ResponseToJson(result);
        }
    }
}
