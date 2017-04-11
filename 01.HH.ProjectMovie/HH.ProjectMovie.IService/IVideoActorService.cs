using HH.ProjectMovie.Service.Model;
using HH.RMS.Common.Constant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HH.ProjectMovie.Service.Interface
{
   public  interface IVideoActorService
    {
        ResultType InsertVideoActor(VideoActorModel model);
    }
}
