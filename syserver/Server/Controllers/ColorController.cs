﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using syserver.Shared.Model;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace syserver.Server.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ColorController : Controller
    {
        // GET: api/values
        [HttpGet]
        public IEnumerable<Color> Get()
        {
            ColorServer Server = new ColorServer();
            Color[] Objs;            
            Objs = Server.GetColorName().Result.ToArray();

            return Objs;
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}

