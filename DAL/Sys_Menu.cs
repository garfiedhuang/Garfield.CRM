using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Garfield.DBUtility;//Please add references
using MySql.Data.MySqlClient;
namespace Garfield.DAL
{
    /// <summary>
    /// ���ݷ�����:Sys_Menu
    /// </summary>
    public partial class Sys_Menu
    {
        public Sys_Menu()
        { }
        #region  Method

        /// <summary>
        /// �õ����ID
        /// </summary>
        public int GetMaxId()
        {
            return DbHelperMySQL.GetMaxID("Menu_id", "Sys_Menu");
        }

        /// <summary>
        /// �Ƿ���ڸü�¼
        /// </summary>
        public bool Exists(int Menu_id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from Sys_Menu");
            strSql.Append(" where Menu_id=@Menu_id ");
            MySqlParameter[] parameters = {
                    new MySqlParameter("@Menu_id", MySqlDbType.Int32,4)};
            parameters[0].Value = Menu_id;

            return DbHelperMySQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// ����һ������
        /// </summary>
        public int Add(Garfield.Model.Sys_Menu model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into Sys_Menu(");
            strSql.Append("Menu_name,parentid,parentname,App_id,Menu_url,Menu_icon,Menu_handler,Menu_order,Menu_type)");
            strSql.Append(" values (");
            strSql.Append("@Menu_name,@parentid,@parentname,@App_id,@Menu_url,@Menu_icon,@Menu_handler,@Menu_order,@Menu_type)");
            strSql.Append(";select @@IDENTITY");
            MySqlParameter[] parameters = {
                    new MySqlParameter("@Menu_name", MySqlDbType.VarChar,255),
                    new MySqlParameter("@parentid", MySqlDbType.Int32,4),
                    new MySqlParameter("@parentname", MySqlDbType.VarChar,255),
                    new MySqlParameter("@App_id", MySqlDbType.Int32,4),
                    new MySqlParameter("@Menu_url", MySqlDbType.VarChar,255),
                    new MySqlParameter("@Menu_icon", MySqlDbType.VarChar,50),
                    new MySqlParameter("@Menu_handler", MySqlDbType.VarChar,50),
                    new MySqlParameter("@Menu_order", MySqlDbType.Int32,4),
                    new MySqlParameter("@Menu_type", MySqlDbType.VarChar,50)};
            parameters[0].Value = model.Menu_name;
            parameters[1].Value = model.parentid;
            parameters[2].Value = model.parentname;
            parameters[3].Value = model.App_id;
            parameters[4].Value = model.Menu_url;
            parameters[5].Value = model.Menu_icon;
            parameters[6].Value = model.Menu_handler;
            parameters[7].Value = model.Menu_order;
            parameters[8].Value = model.Menu_type;

            object obj = DbHelperMySQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// ����һ������
        /// </summary>
        public bool Update(Garfield.Model.Sys_Menu model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update Sys_Menu set ");
            strSql.Append("Menu_name=@Menu_name,");
            strSql.Append("parentid=@parentid,");
            strSql.Append("parentname=@parentname,");
            strSql.Append("App_id=@App_id,");
            strSql.Append("Menu_url=@Menu_url,");
            strSql.Append("Menu_icon=@Menu_icon,");
            strSql.Append("Menu_handler=@Menu_handler,");
            strSql.Append("Menu_order=@Menu_order,");
            strSql.Append("Menu_type=@Menu_type");
            strSql.Append(" where Menu_id=@Menu_id");
            MySqlParameter[] parameters = {
                    new MySqlParameter("@Menu_name", MySqlDbType.VarChar,255),
                    new MySqlParameter("@parentid", MySqlDbType.Int32,4),
                    new MySqlParameter("@parentname", MySqlDbType.VarChar,255),
                    new MySqlParameter("@App_id", MySqlDbType.Int32,4),
                    new MySqlParameter("@Menu_url", MySqlDbType.VarChar,255),
                    new MySqlParameter("@Menu_icon", MySqlDbType.VarChar,50),
                    new MySqlParameter("@Menu_handler", MySqlDbType.VarChar,50),
                    new MySqlParameter("@Menu_order", MySqlDbType.Int32,4),
                    new MySqlParameter("@Menu_type", MySqlDbType.VarChar,50),
                    new MySqlParameter("@Menu_id", MySqlDbType.Int32,4)};
            parameters[0].Value = model.Menu_name;
            parameters[1].Value = model.parentid;
            parameters[2].Value = model.parentname;
            parameters[3].Value = model.App_id;
            parameters[4].Value = model.Menu_url;
            parameters[5].Value = model.Menu_icon;
            parameters[6].Value = model.Menu_handler;
            parameters[7].Value = model.Menu_order;
            parameters[8].Value = model.Menu_type;
            parameters[9].Value = model.Menu_id;

            int rows = DbHelperMySQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Ԥɾ��
        /// </summary>
        public bool AdvanceDelete(int id, int isDelete, string time)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update Sys_Menu set ");
            strSql.Append("isDelete=" + isDelete);
            strSql.Append(",Delete_time='" + time + "'");
            strSql.Append(" where id=" + id);
            int rows = DbHelperMySQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// ɾ��һ������
        /// </summary>
        public bool Delete(int Menu_id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from Sys_Menu ");
            strSql.Append(" where Menu_id=@Menu_id");
            MySqlParameter[] parameters = {
                    new MySqlParameter("@Menu_id", MySqlDbType.Int32,4)
};
            parameters[0].Value = Menu_id;

            int rows = DbHelperMySQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// ɾ��һ������
        /// </summary>
        public bool DeleteList(string Menu_idlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from Sys_Menu ");
            strSql.Append(" where Menu_id in (" + Menu_idlist + ")  ");
            int rows = DbHelperMySQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public Garfield.Model.Sys_Menu GetModel(int Menu_id)
        {

            StringBuilder strSql = new StringBuilder();
            //strSql.Append("select  top 1 Menu_id,Menu_name,parentid,parentname,App_id,Menu_url,Menu_icon,Menu_handler,Menu_order,Menu_type from Sys_Menu ");
            strSql.Append("select  Menu_id,Menu_name,parentid,parentname,App_id,Menu_url,Menu_icon,Menu_handler,Menu_order,Menu_type from Sys_Menu ");
            strSql.Append(" where Menu_id=@Menu_id");
            strSql.Append(" limit 1");
            MySqlParameter[] parameters = {
                    new MySqlParameter("@Menu_id", MySqlDbType.Int32,4)
};
            parameters[0].Value = Menu_id;

            Garfield.Model.Sys_Menu model = new Garfield.Model.Sys_Menu();
            DataSet ds = DbHelperMySQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["Menu_id"] != null && ds.Tables[0].Rows[0]["Menu_id"].ToString() != "")
                {
                    model.Menu_id = int.Parse(ds.Tables[0].Rows[0]["Menu_id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Menu_name"] != null && ds.Tables[0].Rows[0]["Menu_name"].ToString() != "")
                {
                    model.Menu_name = ds.Tables[0].Rows[0]["Menu_name"].ToString();
                }
                if (ds.Tables[0].Rows[0]["parentid"] != null && ds.Tables[0].Rows[0]["parentid"].ToString() != "")
                {
                    model.parentid = int.Parse(ds.Tables[0].Rows[0]["parentid"].ToString());
                }
                if (ds.Tables[0].Rows[0]["parentname"] != null && ds.Tables[0].Rows[0]["parentname"].ToString() != "")
                {
                    model.parentname = ds.Tables[0].Rows[0]["parentname"].ToString();
                }
                if (ds.Tables[0].Rows[0]["App_id"] != null && ds.Tables[0].Rows[0]["App_id"].ToString() != "")
                {
                    model.App_id = int.Parse(ds.Tables[0].Rows[0]["App_id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Menu_url"] != null && ds.Tables[0].Rows[0]["Menu_url"].ToString() != "")
                {
                    model.Menu_url = ds.Tables[0].Rows[0]["Menu_url"].ToString();
                }
                if (ds.Tables[0].Rows[0]["Menu_icon"] != null && ds.Tables[0].Rows[0]["Menu_icon"].ToString() != "")
                {
                    model.Menu_icon = ds.Tables[0].Rows[0]["Menu_icon"].ToString();
                }
                if (ds.Tables[0].Rows[0]["Menu_handler"] != null && ds.Tables[0].Rows[0]["Menu_handler"].ToString() != "")
                {
                    model.Menu_handler = ds.Tables[0].Rows[0]["Menu_handler"].ToString();
                }
                if (ds.Tables[0].Rows[0]["Menu_order"] != null && ds.Tables[0].Rows[0]["Menu_order"].ToString() != "")
                {
                    model.Menu_order = int.Parse(ds.Tables[0].Rows[0]["Menu_order"].ToString());
                }
                if (ds.Tables[0].Rows[0]["Menu_type"] != null && ds.Tables[0].Rows[0]["Menu_type"].ToString() != "")
                {
                    model.Menu_type = ds.Tables[0].Rows[0]["Menu_type"].ToString();
                }
                return model;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// ��������б�
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select Menu_id,Menu_name,parentid,parentname,App_id,Menu_url,Menu_icon,Menu_handler,Menu_order,Menu_type ");
            strSql.Append(" FROM Sys_Menu ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperMySQL.Query(strSql.ToString());
        }

        /// <summary>
        /// ���ǰ��������
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            //if (Top > 0)
            //{
            //    strSql.Append(" top " + Top.ToString());
            //}
            strSql.Append(" Menu_id,Menu_name,parentid,parentname,App_id,Menu_url,Menu_icon,Menu_handler,Menu_order,Menu_type ");
            strSql.Append(" FROM Sys_Menu ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            if (Top > 0)
            {
                strSql.Append(" limit " + Top.ToString());
            }
            return DbHelperMySQL.Query(strSql.ToString());
        }

        /// <summary>
        /// ��ҳ��ȡ�����б�
        /// </summary>
        public DataSet GetList(int PageSize, int PageIndex, string strWhere, string filedOrder, out string Total)
        {
            StringBuilder strSql = new StringBuilder();
            StringBuilder strSql1 = new StringBuilder();
            strSql.Append("select ");
            //strSql.Append(" top " + PageSize + " * FROM Sys_Menu ");
            strSql.Append(" * FROM Sys_Menu where 1=1 ");
            //strSql.Append(" WHERE id not in ( SELECT top " + (PageIndex - 1) * PageSize + " id FROM Sys_Menu ");
            //strSql.Append(" where " + strWhere + " order by " + filedOrder +")");
            strSql1.Append(" select count(id) FROM Sys_Menu ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" and " + strWhere);
                strSql1.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            strSql.Append(" limit " + (PageIndex - 1) * PageSize + "," + PageSize);
            Total = DbHelperMySQL.Query(strSql1.ToString()).Tables[0].Rows[0][0].ToString();
            return DbHelperMySQL.Query(strSql.ToString());
        }

        #endregion  Method
    }
}

