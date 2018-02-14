using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BLL
{
    public interface ILogic<T> where T:IModel
    {
        int Insert(T obj);
        int Update(T obj);
        int Delete(int ID);
        T SelectByID(int ID);
        DataTable SelectAll();
    }
}