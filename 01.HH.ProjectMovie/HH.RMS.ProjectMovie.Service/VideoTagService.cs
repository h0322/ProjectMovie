using HH.ProjectMovie.Entity;
using HH.ProjectMovie.Repository;
using HH.ProjectMovie.Service.Interface;
using HH.ProjectMovie.Service.Model;
using HH.RMS.Common.Constant;
using HH.RMS.Common.Utilities;
using HH.RMS.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HH.ProjectMovie.Service
{
    public class VideoTagService : IVideoTagService
    {
        private IRepository<VideoTagEntity> _videoTagRepository { get; set; }
        public VideoTagService(IRepository<VideoTagEntity> videoTagRepository)
        {
            _videoTagRepository = videoTagRepository;
        }
        public long InsertTag(string tag)
        {
            long maxBitMap = 0;
            long bitMap = 0;
            string[] tagArray = tag.Split('/');
            foreach(var item in tagArray)
            {
                VideoTagModel model = QueryVideoTagByName(item);
                if(model==null)
                {
                    using (var db = new MovieDbContext())
                    {
                       maxBitMap = _videoTagRepository.Query(db).Max(m => m.bitMap);
                    }
                    model = new VideoTagModel();
                    model.tagName = item;
                    model.bitMap = maxBitMap * 2;
                    InsertTag(model);
                }
                bitMap = bitMap + model.bitMap;
            }
            return bitMap;
            
        }
        public ResultType InsertTag(VideoTagModel model)
        {
            try
            {
                var entity = VideoTagModel.EntityMapper<VideoTagEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _videoTagRepository.Insert(db, entity);
                }
                return ResultType.Success;
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoTagService.InsertTag", ex);
                return ResultType.FieldError;
            }
        }
        public VideoTagModel QueryVideoTagByName(string tagName)
        {
            try
            {
                using (var db = new MovieDbContext())
                {
                    var entity = _videoTagRepository.Query(db).Where(m=>m.tagName == tagName).FirstOrDefault();
                    return null;
                }
            }
            catch(Exception ex)
            {
                Config.log.Error("VideoTagService.QueryVideoTagByName", ex);
                return null;
            }
        }
    }
}
