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
    public class FilmManImageService : IFilmManImageService
    {
        private IMovieRepository<FilmManImageEntity> _filmManImageRepository { get; set; }
        public FilmManImageService(IMovieRepository<FilmManImageEntity> filmManImageRepository)
        {
            this._filmManImageRepository = filmManImageRepository;
        }

        public ResultType InsertFilmManImage(FilmManImageModel model)
        {
            try
            {
                var entity = FilmManImageModel.EntityMapper<FilmManImageEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _filmManImageRepository.Insert(db, entity);
                }
                model.id = entity.id;
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoService.InsertFilmManImage", ex);
                return ResultType.SystemError;
            }
            return ResultType.Success;
        }
    }
}
