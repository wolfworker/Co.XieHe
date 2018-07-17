using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Co.XieHe.Model
{
    /// <summary>
    /// 注册请求实体
    /// </summary>
    public class RegisterRequest : BaseRequest
    {
        public string UserName { get; set; }

        public string Phone { get; set; }

        public string PassWord { get; set; }
    }

    /// <summary>
    /// 注册返回实体
    /// </summary>
    public class RegisterResponse
    {
        public int ID { get; set; }
        public string UserName { get; set; }
        public string Phone { get; set; }
        public string Mail { get; set; }
        public byte Gender { get; set; }
        public byte Status { get; set; }
        public string InviteCode { get; set; }
        public decimal Point { get; set; }
    }


    /// <summary>
    /// 返回实体基类
    /// </summary>
    public class BaseResponse<T>
    {
        /// <summary>
        /// 0：成功  -1：失败
        /// </summary>
        public int ErrorCode { get; set; } = -1;

        /// <summary>
        /// 失败描述
        /// </summary>
        public string ErrorMsg { get; set; } = string.Empty;

        /// <summary>
        /// 业务实体
        /// </summary>
        public T Result { get; set; }
    }


    /// <summary>
    /// 请求实体基类
    /// </summary>
    public class BaseRequest
    {
        public string Host { get; set; }

        public string UserAgent { get; set; }
    }
}
