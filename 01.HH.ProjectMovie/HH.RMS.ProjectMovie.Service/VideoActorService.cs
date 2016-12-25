using HH.ProjectMovie.Entity;
using HH.ProjectMovie.Repository;
using HH.ProjectMovie.Repository.Interface;
using HH.ProjectMovie.Service.Interface;
using HH.ProjectMovie.Service.Model;
using HH.RMS.Common.Constant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HH.ProjectMovie.Service
{
    public class VideoActorService : IVideoActorService
    {
                private IMovieRepository<VideoActorEntity> _videoActorRepository { get; set; }
        public VideoActorService(IMovieRepository<VideoActorEntity> filmManImageRepository)
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
