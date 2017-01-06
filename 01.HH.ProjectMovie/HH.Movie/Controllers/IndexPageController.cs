using HH.ProjectMovie.Common;
using HH.ProjectMovie.Service.Interface;
using HH.ProjectMovie.Service.Model;
using HH.RMS.Common.Utilities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HH.Movie.Controllers
{
    public class IndexPageController : Controller
    {
        //
        // GET: /IndexPage/
        private IVideoService _videoService { get; set; }
        private IVideoTagService _videoTagService { get; set; }
        private IFilmManService _filmManService { get; set; }
        private IFilmManImageService _filmManImageService { get; set; }
        public IndexPageController(IFilmManImageService filmManImageService,IVideoService videoService, IVideoTagService videoTagService, IFilmManService filmManService)
        {
            this._videoService = videoService;
            this._videoTagService = videoTagService;
            _filmManService = filmManService;
            _filmManImageService = filmManImageService;
        }
        public ActionResult Index()
        {
            string url = string.Format(Constant.movieInterfaceUrl, Constant.movieInterfaceAppKey, "撒娇女人最好命");
            string result = NetHelper.Get(url);
            //tag
            var videoPullModel = JsonConvert.DeserializeObject<VideoPullModel>(result);
            videoPullModel.result.videoTag = _videoTagService.InsertTag(videoPullModel.result.tag);
            //actor
            foreach (var item in videoPullModel.result.actorDetalList)
            {
                FilmManModel filmManModel = new FilmManModel();
                filmManModel.country = 0;
                filmManModel.name = item.name;
                filmManModel.url = item.url;
                _filmManService.InsertFilmMan(filmManModel);
                FilmManImageModel imageModel = new FilmManImageModel();
                imageModel.acotrId = filmManModel.id;
                imageModel.url = "";
                imageModel.isCover = true;
                _filmManImageService.InsertFilmManImage(imageModel);
            }
            //

            _videoService.InsertVideo(videoPullModel.result);
            return View();
        }

    }
}
