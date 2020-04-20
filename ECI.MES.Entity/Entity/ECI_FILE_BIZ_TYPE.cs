#pragma warning disable  1591
using PL.Base;
using System;
using System.Collections.Generic;
using System.Data;
using PL.Server.Entity;
using PL.Server.Entity.Entity;
 
namespace ECI.MES.Entity
{
    public partial class ECI_FILE_BIZ_TYPE : EntityBase
	{
	     public ECI_FILE_BIZ_TYPE()
		 {
		    base.Table = new TableInfo { Name = "ECI_FILE_BIZ_TYPE" };
		    base.Columns = ECI_FILE_BIZ_TYPE_COLUMN.Instance;
			this.Init();
		 }
		
		public ECI_FILE_BIZ_TYPE(string keyField):this()
        {
            base.KeyField =  keyField;
        }

	public ECI_FILE_BIZ_TYPE(string keyField,string keyValue):this()
        {
            base.KeyField =  keyField;
            this[keyField]= keyValue;
        }
		
		
        public ECI_FILE_BIZ_TYPE(EntityBase entityBase)
            : this()
        {
            this.Data = entityBase.Data;
        }
 
		#region DataMember
		
                                                     /// <summary>
                    ///  
                    /// </summary>
                    public string GUID
                    {
                        get
                        {
                            return this.TextAccess["GUID"];
                        }
                        set
                        {
                            this.TextAccess["GUID"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string CODE
                    {
                        get
                        {
                            return this.TextAccess["CODE"];
                        }
                        set
                        {
                            this.TextAccess["CODE"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string NAME
                    {
                        get
                        {
                            return this.TextAccess["NAME"];
                        }
                        set
                        {
                            this.TextAccess["NAME"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string CONFIG
                    {
                        get
                        {
                            return this.TextAccess["CONFIG"];
                        }
                        set
                        {
                            this.TextAccess["CONFIG"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string STATUS
                    {
                        get
                        {
                            return this.TextAccess["STATUS"];
                        }
                        set
                        {
                            this.TextAccess["STATUS"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public System.Nullable<DateTime> CREATE_DATE
                    {
                        get
                        {
                            return this.DateAccess["CREATE_DATE"];
                        }
                        set
                        {
                            this.DateAccess["CREATE_DATE"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string CREATE_USER
                    {
                        get
                        {
                            return this.TextAccess["CREATE_USER"];
                        }
                        set
                        {
                            this.TextAccess["CREATE_USER"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string IS_DELETE
                    {
                        get
                        {
                            return this.TextAccess["IS_DELETE"];
                        }
                        set
                        {
                            this.TextAccess["IS_DELETE"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string SAVE_DB
                    {
                        get
                        {
                            return this.TextAccess["SAVE_DB"];
                        }
                        set
                        {
                            this.TextAccess["SAVE_DB"] = value;
                        }
                    }


		#endregion
	 
	    #region Query Method
        public ECI_FILE_BIZ_TYPE SingleOrDefault()
        {
           return new EntityBuilder<ECI_FILE_BIZ_TYPE>().ToEntityBySql(this.SQLSelect);
        }

        public ECI_FILE_BIZ_TYPE SingleOrDefault(object ts)
        {
            return new EntityBuilder<ECI_FILE_BIZ_TYPE>().ToEntityBySql(this.SQLSelect, ts);
        }

        public List<ECI_FILE_BIZ_TYPE> ToList()
        {
             return new EntityBuilder<ECI_FILE_BIZ_TYPE>().ToListBySql(this.SQLSelect);
        }
		 
        public List<ECI_FILE_BIZ_TYPE> ToList(object ts)
        {
            return new EntityBuilder<ECI_FILE_BIZ_TYPE>().ToListBySql(this.SQLSelect, ts);
        }
		
		public static ECI_FILE_BIZ_TYPE SingleOrDefault(string sql)
        {
            return SingleOrDefault(sql, null);
        }

        public static ECI_FILE_BIZ_TYPE SingleOrDefault(string sql,object ts)
        {
            List<ECI_FILE_BIZ_TYPE> list = ToListBySql(sql, ts);

            if (list.Count == 0) return null;
            else
            {
                return list[0];
            }
        }
		
		public static  List<ECI_FILE_BIZ_TYPE> ToListBySql(string sql)
        {
            return ToListBySql(sql, null);
        }

        public static List<ECI_FILE_BIZ_TYPE> ToListBySql(string sql, object ts)
        {
            return new EntityBuilder<ECI_FILE_BIZ_TYPE>().ToListBySql(sql, ts);
        }
		
		public static List<ECI_FILE_BIZ_TYPE> ToList(DataTable data)
        {
            return new EntityBuilder<ECI_FILE_BIZ_TYPE>().ToList(data);
        }
		
		
		#endregion
		
	    public static TDAL<ECI_FILE_BIZ_TYPE, ECI_FILE_BIZ_TYPE_FIELD> DAL
        {
            get
            {
                return new TDAL<ECI_FILE_BIZ_TYPE, ECI_FILE_BIZ_TYPE_FIELD>();
            }
        }
		
	    public static ECI_FILE_BIZ_TYPE_FIELD Fields
        {
            get { return ECI_FILE_BIZ_TYPE_FIELD.Instance; }
        }
		
	
		public static EntityBuilder<ECI_FILE_BIZ_TYPE> EntityBuilder = new EntityBuilder<ECI_FILE_BIZ_TYPE>();
    }

	internal class ECI_FILE_BIZ_TYPE_COLUMN : BaseColumn
    {
        public static ECI_FILE_BIZ_TYPE_COLUMN Instance;

        static ECI_FILE_BIZ_TYPE_COLUMN()
        {
            Instance = new ECI_FILE_BIZ_TYPE_COLUMN();
        }

        private ECI_FILE_BIZ_TYPE_COLUMN()
        {
               base.ListColumn.Add(new ColumnInfo() { Name = "GUID", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "CODE", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "NAME", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "CONFIG", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "STATUS", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "CREATE_DATE", Type = "DATE"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "CREATE_USER", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "IS_DELETE", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "SAVE_DB", Type = "TEXT"  });

        }
    }
	
  public class  ECI_FILE_BIZ_TYPE_FIELD
  {
       private static ECI_FILE_BIZ_TYPE_FIELD instance;

        public static ECI_FILE_BIZ_TYPE_FIELD Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ECI_FILE_BIZ_TYPE_FIELD();
                }

                return instance;
            }
        }
		
                    public readonly string GUID = "GUID";
        public readonly string CODE = "CODE";
        public readonly string NAME = "NAME";
        public readonly string CONFIG = "CONFIG";
        public readonly string STATUS = "STATUS";
        public readonly string CREATE_DATE = "CREATE_DATE";
        public readonly string CREATE_USER = "CREATE_USER";
        public readonly string IS_DELETE = "IS_DELETE";
        public readonly string SAVE_DB = "SAVE_DB";

   }
}