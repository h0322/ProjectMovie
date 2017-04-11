using HH.ProjectMovie.Common;
using HH.RMS.Common.Attributes;
using HH.RMS.Common.Constant;
using HH.RMS.Entity;
using Nelibur.ObjectMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HH.ProjectMovie.Service.Model
{
    public class VideoPlayerModel
    {
        public long id { get; set; }
        public long videoId { get; set; }
        public string code { get; set; }
        public string playerName { get; set; }
        public string description { get; set; }
        public PlayerType playerType { get; set; }
        public string url { get; set; }
        public static T ModelMapper<T>(object entity)
        {
            return TinyMapper.Map<T>(entity);
        }
        public static T EntityMapper<T>(object model)
        {
            return TinyMapper.Map<T>(model);
        }
    }
}
