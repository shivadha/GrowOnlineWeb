using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.Repository
{
    public interface IRepository<T> where T : class
    {
        T GetById(Guid id);
        IQueryable<T> GetAll();
        T FindBy(object parameter);
        T FindBy(Expression<Func<T, bool>> filter);
        T FindBy(Expression<Func<T, bool>> filter, string include);
        IQueryable<T> SearchBy(Expression<Func<T, bool>> filter);
        IQueryable<T> SearchBy(Expression<Func<T, bool>> filter, string include);
        //IEnumerable<T> SqlQuery(string sql);
        //IEnumerable<T> SqlQuery(string sql, object[] parameters);
        bool Exists(T entity);
        bool Exists(params object[] keys);
        bool Exists(Expression<Func<T, bool>> filter);
        //IEnumerable<System.Web.Mvc.SelectListItem> GetSelectList(string text, string value, string selected);
        void Insert(T entity);
        void Update(T entity);
        void Update(List<T> entities);
        void Delete(T entity);
        void Delete(List<T> entities);
        void Commit();
        void Dispose();

        List<T> GetAllList(
        out int totalCount,
        Expression<Func<T, bool>> filter = null,
        Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null,
        bool enablePaging = false,
        int curPage = 0,
        int countPerPage = 10,
        string includeProperties = "");

        IQueryable<T> GetQuery(
      out int totalCount,
      Expression<Func<T, bool>> filter = null,
      Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null,
      bool enablePaging = false,
      int curPage = 0,
      int countPerPage = 10,
      string includeProperties = "");



    }
}
