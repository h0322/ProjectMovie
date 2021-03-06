﻿using HH.ProjectMovie.Entity;
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
    public class FilmManService : IFilmManService
    {
        private IRepository<FilmManEntity> _filmManRepository { get; set; }
        public FilmManService(IRepository<FilmManEntity> filmManRepository)
        {
            this._filmManRepository = filmManRepository;
        }

        public ResultType InsertFilmMan(FilmManModel model)
        {
            try
            {
                var entity = FilmManModel.EntityMapper<FilmManEntity>(model);
                using (var db = new MovieDbContext())
                {
                    _filmManRepository.Insert(db, entity);
                }
                model.id = entity.id;
            }
            catch (Exception ex)
            {
                Config.log.Error("VideoService.InsertFilmMan", ex);
                return ResultType.SystemError;
            }
            return ResultType.Success;
        }
    }
}
