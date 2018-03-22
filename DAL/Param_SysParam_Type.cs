using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Garfield.DBUtility;//Please add references
using MySql.Data.MySqlClient;
namespace Garfield.DAL
{
	/// <summary>
	/// ���ݷ�����:Param_SysParam_Type
	/// </summary>
	public partial class Param_SysParam_Type
	{
		public Param_SysParam_Type()
		{}
		#region  Method



		/// <summary>
		/// ����һ������
		/// </summary>
		public void Add(Garfield.Model.Param_SysParam_Type model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Param_SysParam_Type(");
			strSql.Append("id,params_name,params_order,isDelete,Delete_time)");
			strSql.Append(" values (");
			strSql.Append("@id,@params_name,@params_order,@isDelete,@Delete_time)");
			MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4),
					new MySqlParameter("@params_name", MySqlDbType.VarChar,250),
					new MySqlParameter("@params_order", MySqlDbType.Int32,4),
					new MySqlParameter("@isDelete", MySqlDbType.Int32,4),
					new MySqlParameter("@Delete_time", MySqlDbType.DateTime)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.params_name;
			parameters[2].Value = model.params_order;
			parameters[3].Value = model.isDelete;
			parameters[4].Value = model.Delete_time;

			DbHelperMySQL.ExecuteSql(strSql.ToString(),parameters);
		}
		/// <summary>
		/// ����һ������
		/// </summary>
		public bool Update(Garfield.Model.Param_SysParam_Type model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Param_SysParam_Type set ");
			strSql.Append("id=@id,");
			strSql.Append("params_name=@params_name,");
			strSql.Append("params_order=@params_order,");
			strSql.Append("isDelete=@isDelete,");
			strSql.Append("Delete_time=@Delete_time");
			strSql.Append(" where ");
			MySqlParameter[] parameters = {
					new MySqlParameter("@id", MySqlDbType.Int32,4),
					new MySqlParameter("@params_name", MySqlDbType.VarChar,250),
					new MySqlParameter("@params_order", MySqlDbType.Int32,4),
					new MySqlParameter("@isDelete", MySqlDbType.Int32,4),
					new MySqlParameter("@Delete_time", MySqlDbType.DateTime)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.params_name;
			parameters[2].Value = model.params_order;
			parameters[3].Value = model.isDelete;
			parameters[4].Value = model.Delete_time;

			int rows=DbHelperMySQL.ExecuteSql(strSql.ToString(),parameters);
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
		public bool Delete()
		{
			//�ñ���������Ϣ�����Զ�������/�����ֶ�
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Param_SysParam_Type ");
			strSql.Append(" where ");
			MySqlParameter[] parameters = {
};

			int rows=DbHelperMySQL.ExecuteSql(strSql.ToString(),parameters);
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
		public Garfield.Model.Param_SysParam_Type GetModel()
		{
			//�ñ���������Ϣ�����Զ�������/�����ֶ�
			StringBuilder strSql=new StringBuilder();
            //strSql.Append("select  top 1 id,params_name,params_order,isDelete,Delete_time from Param_SysParam_Type ");
            strSql.Append("select id,params_name,params_order,isDelete,Delete_time from Param_SysParam_Type ");
            strSql.Append(" where 1=1");
            strSql.Append(" limit 1");
            MySqlParameter[] parameters = {
};

			Garfield.Model.Param_SysParam_Type model=new Garfield.Model.Param_SysParam_Type();
			DataSet ds=DbHelperMySQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["id"]!=null && ds.Tables[0].Rows[0]["id"].ToString()!="")
				{
					model.id=int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
				}
				if(ds.Tables[0].Rows[0]["params_name"]!=null && ds.Tables[0].Rows[0]["params_name"].ToString()!="")
				{
					model.params_name=ds.Tables[0].Rows[0]["params_name"].ToString();
				}
				if(ds.Tables[0].Rows[0]["params_order"]!=null && ds.Tables[0].Rows[0]["params_order"].ToString()!="")
				{
					model.params_order= int.Parse( ds.Tables[0].Rows[0]["params_order"].ToString());
				}
				if(ds.Tables[0].Rows[0]["isDelete"]!=null && ds.Tables[0].Rows[0]["isDelete"].ToString()!="")
				{
					model.isDelete=int.Parse(ds.Tables[0].Rows[0]["isDelete"].ToString());
				}
				if(ds.Tables[0].Rows[0]["Delete_time"]!=null && ds.Tables[0].Rows[0]["Delete_time"].ToString()!="")
				{
					model.Delete_time=DateTime.Parse(ds.Tables[0].Rows[0]["Delete_time"].ToString());
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
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select id,params_name,params_order,isDelete,Delete_time ");
			strSql.Append(" FROM Param_SysParam_Type ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperMySQL.Query(strSql.ToString());
		}

		/// <summary>
		/// ���ǰ��������
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			//if(Top>0)
			//{
			//	strSql.Append(" top "+Top.ToString());
			//}
			strSql.Append(" id,params_name,params_order,isDelete,Delete_time ");
			strSql.Append(" FROM Param_SysParam_Type ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
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
            //strSql.Append(" top " + PageSize + " * FROM Param_SysParam_Type ");
            strSql.Append(" * FROM Param_SysParam_Type where 1=1 ");
            //strSql.Append(" WHERE id not in ( SELECT top " + (PageIndex - 1) * PageSize + " id FROM Param_SysParam_Type ");
            //strSql.Append(" where " + strWhere + " order by " + filedOrder +")");
            strSql1.Append(" select count(id) FROM Param_SysParam_Type ");
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
