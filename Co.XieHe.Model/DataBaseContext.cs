﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Co.XieHe.Model
{
    /// <summary>
    /// 数据上下文
    /// </summary>
    public class DataBaseContext : DbContext
    {
        public DataBaseContext()
            : base("DataBaseContext")
        {

        }
        #region 数据库 表实体
        /// <summary>
        /// 用户表
        /// </summary>
        public DbSet<ACT_User> Users { get; set; }

        /// <summary>
        /// 日志表
        /// </summary>
        public DbSet<SYS_DebugLog> DebugLogs { get; set; }

        /// <summary>
        /// 日志表
        /// </summary>
        public DbSet<ACT_AuthentifyInfo> AuthentifyInfo { get; set; }

        /// <summary>
        /// 日志表
        /// </summary>
        public DbSet<ACT_InviteLog> InviteLogs { get; set; }

        /// <summary>
        /// 日志表
        /// </summary>
        public DbSet<ACT_VerifyLog> VerifyLogs { get; set; }

        /// <summary>
        /// 日志表
        /// </summary>
        public DbSet<POT_UserPointLog> UserPointLogs { get; set; }

        /// <summary>
        /// 日志表
        /// </summary>
        public DbSet<SYS_RequestLog> RequestLogs { get; set; }

        #endregion
    }
}
