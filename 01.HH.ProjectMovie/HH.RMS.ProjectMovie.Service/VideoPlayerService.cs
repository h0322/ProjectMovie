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
    public class VideoPlayerService : IVideoPlayerService
    {
       private IRepository<VideoPlayerEntity> _videoPlayerRepository { get; set; }
       public VideoPlayerService(IRepository<VideoPlayerEntity> videoPlayerRepository)
        {
            this._videoPlayerRepository = videoPlayerRepository;
        }

        public ResultType InsertVideoPlayer(VideoPlayerModel model)
        {
            try
            {
                var entity = VideoPlayerModel.EntityMapper<VideoPlayerEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _videoPlayerRepository.Insert(db, entity);
                }
                model.id = entity.id;
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoService.InsertVideoPlayer", ex);
                return ResultType.SystemError;
            }
            return ResultType.Success;
        }
    }
}
