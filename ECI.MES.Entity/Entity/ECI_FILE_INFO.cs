#pragma warning disable  1591
using PL.Base;
using System;
using System.Collections.Generic;
using System.Data;
using PL.Server.Entity;
using PL.Server.Entity.Entity;
 
namespace ECI.MES.Entity
{
    public partial class ECI_FILE_INFO : EntityBase
	{
	     public ECI_FILE_INFO()
		 {
		    base.Table = new TableInfo { Name = "ECI_FILE_INFO" };
		    base.Columns = ECI_FILE_INFO_COLUMN.Instance;
			this.Init();
		 }
		
		public ECI_FILE_INFO(string keyField):this()
        {
            base.KeyField =  keyField;
        }

	public ECI_FILE_INFO(string keyField,string keyValue):this()
        {
            base.KeyField =  keyField;
            this[keyField]= keyValue;
        }
		
		
        public ECI_FILE_INFO(EntityBase entityBase)
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
                    public string BIZ_NO
                    {
                        get
                        {
                            return this.TextAccess["BIZ_NO"];
                        }
                        set
                        {
                            this.TextAccess["BIZ_NO"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string BIZ_TYPE
                    {
                        get
                        {
                            return this.TextAccess["BIZ_TYPE"];
                        }
                        set
                        {
                            this.TextAccess["BIZ_TYPE"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string TYPE
                    {
                        get
                        {
                            return this.TextAccess["TYPE"];
                        }
                        set
                        {
                            this.TextAccess["TYPE"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string FILE_NAME
                    {
                        get
                        {
                            return this.TextAccess["FILE_NAME"];
                        }
                        set
                        {
                            this.TextAccess["FILE_NAME"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string FILE_NAME_ORI
                    {
                        get
                        {
                            return this.TextAccess["FILE_NAME_ORI"];
                        }
                        set
                        {
                            this.TextAccess["FILE_NAME_ORI"] = value;
                        }
                    }
                    /// <summary>
                    ///  
                    /// </summary>
                    public string PATH
                    {
                        get
                        {
                            return this.TextAccess["PATH"];
                        }
                        set
                        {
                            this.TextAccess["PATH"] = value;
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
                    public System.Nullable<double> SEQ
                    {
                        get
                        {
                            return this.DoubleAccess["SEQ"];
                        }
                        set
                        {
                            this.DoubleAccess["SEQ"] = value;
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
                    /// <summary>
                    ///  
                    /// </summary>
                    public string DATA_CONTENT
                    {
                        get
                        {
                            return this.TextAccess["DATA_CONTENT"];
                        }
                        set
                        {
                            this.TextAccess["DATA_CONTENT"] = value;
                        }
                    }


		#endregion
	 
	    #region Query Method
        public ECI_FILE_INFO SingleOrDefault()
        {
           return new EntityBuilder<ECI_FILE_INFO>().ToEntityBySql(this.SQLSelect);
        }

        public ECI_FILE_INFO SingleOrDefault(object ts)
        {
            return new EntityBuilder<ECI_FILE_INFO>().ToEntityBySql(this.SQLSelect, ts);
        }

        public List<ECI_FILE_INFO> ToList()
        {
             return new EntityBuilder<ECI_FILE_INFO>().ToListBySql(this.SQLSelect);
        }
		 
        public List<ECI_FILE_INFO> ToList(object ts)
        {
            return new EntityBuilder<ECI_FILE_INFO>().ToListBySql(this.SQLSelect, ts);
        }
		
		public static ECI_FILE_INFO SingleOrDefault(string sql)
        {
            return SingleOrDefault(sql, null);
        }

        public static ECI_FILE_INFO SingleOrDefault(string sql,object ts)
        {
            List<ECI_FILE_INFO> list = ToListBySql(sql, ts);

            if (list.Count == 0) return null;
            else
            {
                return list[0];
            }
        }
		
		public static  List<ECI_FILE_INFO> ToListBySql(string sql)
        {
            return ToListBySql(sql, null);
        }

        public static List<ECI_FILE_INFO> ToListBySql(string sql, object ts)
        {
            return new EntityBuilder<ECI_FILE_INFO>().ToListBySql(sql, ts);
        }
		
		public static List<ECI_FILE_INFO> ToList(DataTable data)
        {
            return new EntityBuilder<ECI_FILE_INFO>().ToList(data);
        }
		
		
		#endregion
		
	    public static TDAL<ECI_FILE_INFO, ECI_FILE_INFO_FIELD> DAL
        {
            get
            {
                return new TDAL<ECI_FILE_INFO, ECI_FILE_INFO_FIELD>();
            }
        }
		
	    public static ECI_FILE_INFO_FIELD Fields
        {
            get { return ECI_FILE_INFO_FIELD.Instance; }
        }
		
	
		public static EntityBuilder<ECI_FILE_INFO> EntityBuilder = new EntityBuilder<ECI_FILE_INFO>();
    }

	internal class ECI_FILE_INFO_COLUMN : BaseColumn
    {
        public static ECI_FILE_INFO_COLUMN Instance;

        static ECI_FILE_INFO_COLUMN()
        {
            Instance = new ECI_FILE_INFO_COLUMN();
        }

        private ECI_FILE_INFO_COLUMN()
        {
               base.ListColumn.Add(new ColumnInfo() { Name = "GUID", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "BIZ_NO", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "BIZ_TYPE", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "TYPE", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "FILE_NAME", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "FILE_NAME_ORI", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "PATH", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "CREATE_DATE", Type = "DATE"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "CREATE_USER", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "SEQ", Type = "NUMBER"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "SAVE_DB", Type = "TEXT"  });
               base.ListColumn.Add(new ColumnInfo() { Name = "DATA_CONTENT", Type = "TEXT"  });

        }
    }
	
  public class  ECI_FILE_INFO_FIELD
  {
       private static ECI_FILE_INFO_FIELD instance;

        public static ECI_FILE_INFO_FIELD Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ECI_FILE_INFO_FIELD();
                }

                return instance;
            }
        }
		
                    public readonly string GUID = "GUID";
        public readonly string BIZ_NO = "BIZ_NO";
        public readonly string BIZ_TYPE = "BIZ_TYPE";
        public readonly string TYPE = "TYPE";
        public readonly string FILE_NAME = "FILE_NAME";
        public readonly string FILE_NAME_ORI = "FILE_NAME_ORI";
        public readonly string PATH = "PATH";
        public readonly string CREATE_DATE = "CREATE_DATE";
        public readonly string CREATE_USER = "CREATE_USER";
        public readonly string SEQ = "SEQ";
        public readonly string SAVE_DB = "SAVE_DB";
        public readonly string DATA_CONTENT = "DATA_CONTENT";

   }
}