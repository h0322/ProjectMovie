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
    public class VideoImageService : IVideoImageService
    {
        private IMovieRepository<VideoImageEntity> _videoImageRepository { get; set; }
        public VideoImageService(IMovieRepository<VideoImageEntity> videoImageRepository)
        {
            this._videoImageRepository = videoImageRepository;
        }

        public ResultType InsertVideoImage(VideoImageModel model)
        {
            try
            {
                var entity = VideoImageModel.EntityMapper<VideoImageEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _videoImageRepository.Insert(db, entity);
                }
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoService.InsertVideoImage", ex);
                return ResultType.SystemError;
            }
            return ResultType.Success;
        }
    }
}
