using GrowIndigo.DAL.DataEntities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.Repository
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private GrowOnlineDevEntities context;
        private DbSet<T> entitySet;
        public Repository(GrowOnlineDevEntities _context)
        {
            this.context = _context;
            this.entitySet = context.Set<T>();
            this.context.Configuration.ProxyCreationEnabled = true;
            this.context.Configuration.LazyLoadingEnabled = true;
        }

        #region CREATE METHOD

        /// <summary>
        /// This method for insert record is database.
        /// </summary>
        /// <typeparam name="T">object entity</typeparam>
        /// <param name="entity">entity</param>
        public void Insert(T entity)
        {
            try
            {
                DbSet<T> _set = context.Set<T>();

                _set.Add(entity);
                //Commit();
                //context.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The validation errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        #endregion

        #region RETRIVE METHOD

        ////Get Entity

        /// <summary>
        /// This method using for get single record from database entity by id.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="id">ID (Primary Key)</param>
        /// <returns>Entity Object</returns>
        public T GetById(Guid id)
        {
            try
            {
                return context.Set<T>().Find(id);
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }

        }

        /// <summary>
        /// This method using for get all record from database entity.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns>All Entity Object</returns>
        /// 
        public List<T> GetAllList(
       out int totalCount,
       Expression<Func<T, bool>> filter = null,
       Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null,
       bool enablePaging = false,
       int curPage = 0,
       int countPerPage = 10,
       string includeProperties = "")
        {
            return this.GetQuery(out totalCount, filter, orderBy, enablePaging, curPage, countPerPage, includeProperties).ToList<T>();
        }

        public IQueryable<T> GetQuery(
       out int totalCount,
       Expression<Func<T, bool>> filter = null,
       Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null,
       bool enablePaging = false,
       int curPage = 0,
       int countPerPage = 10,
       string includeProperties = "")
        {
            IQueryable<T> source = (IQueryable<T>)this.entitySet;

            //case for all data
            if (countPerPage < 0)
            {
                enablePaging = false;
            }
            if (filter != null)
                source = source.Where<T>(filter);
            string str = includeProperties;
            char[] separator = new char[1] { ',' };
            foreach (string path in str.Split(separator, StringSplitOptions.RemoveEmptyEntries))
                source = source.Include<T>(path);
            totalCount = source.Count<T>();
            if (orderBy == null)
                return source;
            if (enablePaging)
                return orderBy(source).Skip<T>(curPage * countPerPage).Take<T>(countPerPage);
            return (IQueryable<T>)orderBy(source);
        }
        public IQueryable<T> GetAll()
        {
            try
            {
                return context.Set<T>();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        ////Single Object Type Method

        /// <summary>
        /// This method using for get single record from database entity by key parameter.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="parameter">key value parameter</param>
        /// <returns>Single Entity Object</returns>
        public T FindBy(object parameter)
        {
            try
            {
                return context.Set<T>().Find(parameter);
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        /// <summary>
        ///This method using for get single record from database entity by key filter expression.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="filter">condition</param>
        /// <returns>Single Entity Object</returns>
        public T FindBy(Expression<Func<T, bool>> filter)
        {
            try
            {
                return context.Set<T>().Where(filter).FirstOrDefault();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        /// <summary>
        ///  This method using for get single record from database entity by key filter expression including additional.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="filter">condition</param>
        /// <param name="include">include</param>
        /// <returns>Single Entity Object</returns>
        public T FindBy(Expression<Func<T, bool>> filter, string include)
        {
            try
            {
                return context.Set<T>().Where(filter).Include(include).FirstOrDefault();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        ////Collection Type Methods

        /// <summary>
        /// This method using for get filter records from database entity by key filter expression.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="filter"></param>
        /// <returns>List</returns>
        public IQueryable<T> SearchBy(Expression<Func<T, bool>> filter)
        {
            try
            {
                return context.Set<T>().Where(filter).AsQueryable();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }


        }

        /// <summary>
        /// This method using for get filter records from database entity by key filter expression including additional.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="filter">expression</param>
        /// <param name="include">include</param>
        /// <returns>List</returns>
        public IQueryable<T> SearchBy(Expression<Func<T, bool>> filter, string include)
        {
            try
            {
                return context.Set<T>().Where(filter).Include(include);
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }



        #endregion

        #region UPDATE METHOD

        /// <summary>
        /// This method for update single record is database.
        /// </summary>
        /// <typeparam name="T">object entity</typeparam>
        /// <param name="entity">entity</param>
        public void Update(T entity)
        {
            try
            {
                DbSet<T> _set = context.Set<T>();
                _set.Attach(entity);
                context.Entry(entity).State = EntityState.Modified;
                //context.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The validation errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        /// <summary>
        ///  This method for update bulk record is database.
        /// </summary>
        /// <typeparam name="T">object entity</typeparam>
        /// <param name="entities">entity</param>
        public void Update(List<T> entities)
        {
            foreach (var entity in entities)
            {
                Update(entity);
            }
        }

        #endregion

        #region  DELETE METHOD
        /// <summary>
        ///  This method for delete single record is database.
        /// </summary>
        /// <typeparam name="T">object entity</typeparam>
        /// <param name="entity">entity</param>
        public void Delete(T entity)
        {
            try
            {
                DbSet<T> _set = context.Set<T>();
                var entry = context.Entry(entity);
                if (entry != null)
                {
                    entry.State = EntityState.Deleted;
                }
                else
                {
                    _set.Attach(entity);
                }
                context.Entry(entity).State = EntityState.Deleted;
                //context.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The validation errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        /// <summary>
        ///  This method for delete bulk record is database.
        /// </summary>
        /// <typeparam name="T">object entity</typeparam>
        /// <param name="entities">entity</param>
        public void Delete(List<T> entities)
        {
            foreach (var entity in entities)
            {
                Delete(entity);
            }
        }

        #endregion

        //// Collection Type Methods SQL Query

        /// <summary>
        /// This method using for get records from database by sql query expression.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sql"></param>
        /// <returns>entity</returns>
        public IEnumerable<T> SqlQuery(string sql)
        {
            try
            {
                return context.Set<T>().SqlQuery(sql);
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }

        }

        /// <summary>
        /// This method using for get records from database by sql query with filter expression.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sql">Sql Query</param>
        /// <param name="parameters">Filter Parameters</param>
        /// <returns>Set of Entity</returns>
        public IEnumerable<T> SqlQuery(string sql, object[] parameters)
        {
            try
            {
                return context.Set<T>().SqlQuery(sql, parameters);
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        ////Result Type Method

        /// <summary>
        /// This method using for checked record is exist in database entity by entity.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="entity"></param>
        /// <returns></returns>
        public bool Exists(T entity)
        {
            return context.Set<T>().Local.Any(e => e == entity);
        }

        /// <summary>
        /// This method using for checked record is exist in database entity by key object arry.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="keys"></param>
        /// <returns></returns>
        public bool Exists(params object[] keys)
        {
            return (context.Set<T>().Find(keys) != null);
        }

        /// <summary>
        /// This method using for checked record is exist in database entity by key filter expression.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="filter">expression</param>
        /// <returns>true/false</returns>
        public bool Exists(Expression<Func<T, bool>> filter)
        {
            try
            {
                return context.Set<T>().Where(filter).FirstOrDefault() != null ? true : false;
            }
            catch (DbEntityValidationException ex)
            {
                // Retrieve the error messages as a list of strings.
                var errorMessages = ex.EntityValidationErrors
                        .SelectMany(x => x.ValidationErrors)
                        .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The exception errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }

        /// <summary>
        /// Save record from database.
        /// </summary>
        public void Commit()
        {
            try
            {
                context.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                Exception raise = ex;
                foreach (var validationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }
        }

        /// <summary>
        /// Dispose Context
        /// </summary>
        public void Dispose()
        {
            if (context != null)
            {
                context.Dispose();
                context = null;
            }
        }

    }
}
