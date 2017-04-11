using HH.RMS.Common.Constant;
using HH.RMS.Repository.Interface;
using HH.ProjectMovie.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HH.ProjectMovie.Service.Interface;
using HH.ProjectMovie.Common;
using HH.RMS.Common.Utilities;
using Newtonsoft.Json;
using HH.ProjectMovie.Service.Model;
using HH.ProjectMovie.Repository;

namespace HH.ProjectMovie.Service
{
    public class VideoService : IVideoService
    {
        private IRepository<VideoEntity> _videoRepository { get; set; }
        public VideoService(IRepository<VideoEntity> videoRepository)
        {
            this._videoRepository = videoRepository;
        }
        //public VideoPullModel GetVideoInfoByName(string name)
        //{

        //    return videoPullModel;
        //}
        public ResultType InsertVideo(VideoModel model)
        {
            try
            {
                var entity = VideoModel.EntityMapper<VideoEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _videoRepository.Insert(db, entity);
                }
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoService.InsertVideo", ex);
                return ResultType.SystemError;
            }
            return ResultType.Success;
        }

    }
}
