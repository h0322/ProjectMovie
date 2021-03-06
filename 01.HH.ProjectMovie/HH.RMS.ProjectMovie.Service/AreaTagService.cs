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
    public class AreaTagService : IAreaTagService
    {
        private IRepository<AreaTagEntity> _areaTagRepository { get; set; }
        public AreaTagService(IRepository<AreaTagEntity> areaTagRepository)
        {
            this._areaTagRepository = areaTagRepository;
        }

        //public ResultType InsertAreaTag(AreaTagModel model)
        //{
        //    try
        //    {
        //        var entity = AreaTagModel.EntityMapper<AreaTagEntity>(model);
        //        using (var db = new MovieDbContext())
        //        {
        //            _areaTagRepository.Insert(db, entity);
        //        }
        //        model.id = entity.id;
        //    }
        //    catch (Exception ex)
        //    {
        //        Config.log.Error("VideoService.InsertAreaTag", ex);
        //        return ResultType.SystemError;
        //    }
        //    return ResultType.Success;
        //}
    }
}
