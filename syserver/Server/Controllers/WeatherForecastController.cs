using System.Data;
using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;
using syserver.Shared;
using syserver.Shared.Model;

namespace syserver.Server.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
    private static readonly string[] Summaries = new[]
    {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

    private readonly ILogger<WeatherForecastController> _logger;

    public WeatherForecastController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet]
    public IEnumerable<Style> Get(string name)
    {
        styleConnections styleConnections = new styleConnections();
        Style[] custsObjs;        
        custsObjs = styleConnections.GetCustDetails(name).Result.ToArray();
        return custsObjs;
        //return Enumerable.Range(1, 5).Select(index => new WeatherForecast
        //{
        //    Date = DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
        //    TemperatureC = 5,
        //    Summary = Summaries[Random.Shared.Next(Summaries.Length)]
        //})
        //.ToArray();
    }

    [HttpPost("po")]
    public IEnumerable<Style> UpdateStyleData(List<Style> updatedData)
    {

        try
        {
            using (MySqlConnection conn = mySQLSqlHelper.GetConnection())
            {
                 conn.Open();
                Console.WriteLine("数据库连接");

                if (conn.State == ConnectionState.Open)
                {
                    using (MySqlCommand cmd = new MySqlCommand("sp_UpdateStyleData", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        // 使用 System.Text.Json 来序列化对象
                        var json = JsonSerializer.Serialize(updatedData);

                        // 添加更新数据的参数，这里需要根据你的存储过程参数来设置
                        cmd.Parameters.Add(new MySqlParameter
                        {
                            ParameterName = "@UpdatedData",
                            DbType = DbType.String, // 根据数据类型设置
                            Value = json, // 将更新数据序列化为 JSON 字符串
                            Direction = ParameterDirection.Input,
                        });

                        // 执行存储过程或 SQL 命令
                         cmd.ExecuteNonQueryAsync();
                    }
                }
                else
                {
                    // 处理数据库连接未成功的情况
                    Console.WriteLine("数据库连接未成功");
                    //return false;
                }
            }
            //return true; // 更新成功
        }
        catch (Exception ex)
        {
            // 处理数据库连接或查询过程中的异常
            Console.WriteLine($"发生异常: {ex.Message}");
            //return false; // 更新失败
        }
        // 在这里处理数据更新逻辑，将更新后的数据保存到数据库
        // 你可以使用 updatedData 对象来获取需要更新的数据，然后将其保存到数据库中
        // 如果使用 Entity Framework Core 或其他 ORM，可以使用相应的方法来更新数据
        //styleConnections styleConnections = new styleConnections();
        //Style[] custsObjs;
        //try
        //{
        //    var success = await styleConnections.UpdateStyleData(updatedData);
        //    if (success)
        //    {
        //        // 数据成功提交
        //        Console.WriteLine("Data submitted successfully.");
        //    }
        //    else
        //    {
        //        // 数据提交失败，进行错误处理
        //        Console.WriteLine("Data submission failed.");
        //    }
        //}catch(Exception e)
        //{
        //    Console.WriteLine("错误："+e);
        //}

        //return custsObjs;
        // 示例伪代码（使用 Entity Framework Core）：
        //using (var context = new YourDbContext())
        //{
        //    foreach (var data in updatedData)
        //    {
        //        var styleData = context.Style.FirstOrDefault(s => s.stylecoloid == data.StyleColoid && s.stylesizeid == data.StyleSizeId);
        //        if (styleData != null)
        //        {
        //            styleData.stylenum = data.StyleNum;
        //        }
        //    }

        //    context.SaveChanges(); // 保存更改
        //}

        return updatedData; // 返回成功状态码
    }

    [Route("api/styles")]
    [HttpPost]
    public async Task<IActionResult> PostStyles([FromBody] List<Style> styles)
    {
        if (styles == null)
        {
            return BadRequest();
        }

        // 保存数据
        Console.WriteLine("数据post处理成功");

        // 返回成功响应
        return Ok();
    }
}

