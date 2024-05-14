using System;
using MySqlConnector;
using System.Threading.Tasks;
using System.Data;
using System.Net.Http.Json;
using System.Text.Json;

namespace syserver.Shared.Model
{
    public class ColorServer
    {
        public async Task<Color[]> GetColorName()
        {
            List<Color> list = new List<Color>();
            try
            {
                using (MySqlConnection conn = mySQLSqlHelper.GetConnection())
                {
                    await conn.OpenAsync(); // 异步打开连接

                    if (conn.State == ConnectionState.Open)
                    {
                        using (MySqlCommand cmd = new MySqlCommand("sp_ColorGet", conn))
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

                                    list.Add(new Color()
                                    {
                                        colorid = reader.GetInt32(0), // 使用索引获取数据
                                        colorname = reader.GetString(1),               
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
        public async Task<Color[]> GetAllColorName()
        {
            List<Color> list = new List<Color>();
            try
            {
                using (MySqlConnection conn = mySQLSqlHelper.GetConnection())
                {
                    await conn.OpenAsync(); // 异步打开连接

                    if (conn.State == ConnectionState.Open)
                    {
                        using (MySqlCommand cmd = new MySqlCommand("sp_ColorGetAll", conn))
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

                                    list.Add(new Color()
                                    {
                                        colorid = reader.GetInt32(0), // 使用索引获取数据
                                        colorname = reader.GetString(1),
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



    }
}

