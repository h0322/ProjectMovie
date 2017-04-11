using HH.ProjectMovie.Entity;
using HH.ProjectMovie.Repository;
using HH.ProjectMovie.Service.Interface;
using HH.ProjectMovie.Service.Model;
using HH.RMS.Common.Constant;
using HH.RMS.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HH.ProjectMovie.Service
{
    public class VideoActorService : IVideoActorService
    {
        private IRepository<VideoActorEntity> _videoActorRepository { get; set; }
        public VideoActorService(IRepository<VideoActorEntity> filmManImageRepository)
        {
            this._videoActorRepository = filmManImageRepository;
        }

        public ResultType InsertVideoActor(VideoActorModel model)
        {
            try
            {
                var entity = VideoActorModel.EntityMapper<VideoActorEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _videoActorRepository.Insert(db, entity);
                }
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoService.InsertVideoActor", ex);
                return ResultType.SystemError;
            }
            return ResultType.Success;
        }
    }
}
