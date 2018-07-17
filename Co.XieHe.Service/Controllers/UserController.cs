using Co.XieHe.Business;
using Co.XieHe.Model;
using Co.XieHe.Utility;
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
        public HttpResponseMessage Register([FromUri] RegisterRequest request)
        {
            //Step 1：校验必传参数

            //Step 2：两次密码 校验

            //Step 3：校验验证码 

            //Step 4：手机号或用户名是否存在

            //Step 5：生成邀请码

            //Step 6：组装注册实体（密码MD5加密）

            //Step 7：发放积分奖励

            var response = new BaseResponse<RegisterResponse>();

            if (request == null)
            {
                return null;
            }
            ConvertBaseRequest(request);

            var userInfo = new ACT_User
            {
                UserName = request.UserName,
                Phone = request.Phone,
                PassChar = SecurityHelper.GenerateMd5Hash(request.PassWord)
            };

            var userEntity = userBiz.Add(userInfo);
            var result = new RegisterResponse
            {
                ID = userEntity.ID,
                InviteCode = userEntity.InviteCode,
                Gender = userEntity.Gender,
                Mail = userEntity.Mail,
                Point = userEntity.Point,
                Phone = userEntity.Phone,
                Status = userEntity.Status,
                UserName = userEntity.UserName
            };

            if (userEntity != null)
            {
                response.ErrorCode = 0;
                response.Result = result;
            }
            return ResponseToJson(response);
        }

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
