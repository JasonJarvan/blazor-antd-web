using System;
using MySqlConnector;
using System.Threading.Tasks;
using System.Data;
using System.Net.Http.Json;
using System.Text.Json;

namespace syserver.Shared.Model
{
    public class StyleServer
    {
        public async Task<Style[]> GetStyleName()
        {
            List<Style> list = new List<Style>();
            try
            {
                using (MySqlConnection conn = mySQLSqlHelper.GetConnection())
                {
                    await conn.OpenAsync(); // 异步打开连接

                    if (conn.State == ConnectionState.Open)
                    {
                        using (MySqlCommand cmd = new MySqlCommand("sp_StyleGetAll", conn))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add(new MySqlParameter
                            {
                                //ParameterName = "@uId",
                                DbType = DbType.String,
                                //Value = colorId,
                                Direction = ParameterDirection.Input,
                            });

                            using (MySqlDataReader reader = await cmd.ExecuteReaderAsync())
                            {
                                while (await reader.ReadAsync())
                                {

                                    list.Add(new Style()
                                    {
                                        //styleid = reader.GetInt32(0), // 使用索引获取数据
                                        stylename = reader.GetString(0),
                                        //stylecoloid = reader.GetInt32(2),
                                        //stylesizeid = reader.GetInt32(3),
                                        //stylenum = reader.GetInt32(4),
                                    });
                                }
                            }
                        }
                    }
                    else
                    {
                        // 处理数据库连接未成功的情况
                        Console.WriteLine("数据库连接未成功");
                    }
                }
            }
            catch (Exception ex)
            {
                // 处理数据库连接或查询过程中的异常
                Console.WriteLine($"发生异常: {ex.Message}");
            }

            return list.ToArray();
        }
        public async Task<bool> UpdateStyleData(List<Style> updatedData)
        {
            try
            {
                using (MySqlConnection conn = mySQLSqlHelper.GetConnection())
                {
                    await conn.OpenAsync();
                    Console.WriteLine("更新数据：数据库连接");

                    if (conn.State == ConnectionState.Open)
                    {
                        using (MySqlCommand cmd = new MySqlCommand("sp_UpdateStyle", conn))
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
                            await cmd.ExecuteNonQueryAsync();
                        }
                    }
                    else
                    {
                        // 处理数据库连接未成功的情况
                        Console.WriteLine("数据库连接未成功");
                        return false;
                    }
                }
                return true; // 更新成功
            }
            catch (Exception ex)
            {
                // 处理数据库连接或查询过程中的异常
                Console.WriteLine($"发生异常: {ex.Message}");
                return false; // 更新失败
            }
        }



    }
}

