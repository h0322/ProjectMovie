﻿using System;
using HH.ProjectMovie.Service.Interface;
using HH.RMS.Common.Unity;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace HH.ProjectMovie.UnitTest
{
    [TestClass]
    public class VideoServiceTest : TestBase
    {
        private IVideoService _videoService { get; set; }
        public VideoServiceTest()
        {
            _videoService = UnityManager.instance.GetService<IVideoService>();
        }
        [TestMethod]
        public void GetVideoInfoByName()
        {
           // _videoService.GetVideoInfoByName("撒娇女人最好命");
        }
    }
}
