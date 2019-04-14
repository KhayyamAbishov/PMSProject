using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
    public abstract class Operation<TModel>
    {
        protected TModel Parameters { get; set; }
        public OperationResult<TModel> Result { get; protected set; }
        protected virtual void Prepare()
        {
        }

        protected abstract void DoJob();

        public virtual OperationResult<TModel> Execute(TModel param)
        {
            Parameters = param;

            Result = new OperationResult<TModel>();

            Prepare();
            DoJob();

            return Result;
        }
    }
}
