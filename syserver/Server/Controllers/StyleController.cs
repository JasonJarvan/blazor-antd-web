using System;
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
    public class StyleController : Controller
    {
        // GET: api/values
        [HttpGet]
        public IEnumerable<Style> Get()
        {
            StyleServer server = new StyleServer();
            Style[] Objs;            
            Objs = server.GetStyleName().Result.ToArray();
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
        public IEnumerable<string> Post([FromBody] List<Style> updatedData)
        {            
            StyleServer server = new StyleServer();                     
            Task<bool> task = server.UpdateStyleData(updatedData);
            yield return "value";
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

