using System;
using MySqlConnector;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions;

namespace syserver.Shared.Model
{
	public class mySQLSqlHelper
	{

        //this field gets initialized at Startup.cs
        public static string conStr;

        public static MySqlConnection GetConnection()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection(conStr);
                //Console.WriteLine("lianjie ceshi sucess");
                return connection;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

    }
}

