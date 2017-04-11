using Newtonsoft.Json;
using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading;
using System.Threading.Tasks;


namespace MovieConsole
{
    class Program
    {
        static readonly string redisKey = "Wechat.Message.Received";
        static readonly string redisChannel = "Channel.Wechat.Message.Received";
        static void Main(string[] args)
        {
            MessageService messageService = new MessageService();
            var messageId = messageService.Sub<string>();
            //using(ConnectionMultiplexer connection = ConnectionMultiplexer.Connect("localhost"))
            //{ 
            //    var sub = connection.GetSubscriber();
            //    sub.Subscribe(redisChannel, new Action<RedisChannel, RedisValue>(GetMessage));

            //    Console.Read();
            //}
            
        }
        static void GetMessage(RedisChannel channel,RedisValue message)
        {
            int second = Convert.ToInt32(message);
            Thread.Sleep(second);
            Console.WriteLine(channel);
            Console.WriteLine(message);
        }
        
    }
    public class MessageService
    {
        readonly string redisKey = "Wechat.Message.Received";
        readonly string redisChannel = "Channel.Wechat.Message.Received";
        public T Sub<T>()
        {
            using (ConnectionMultiplexer connection = ConnectionMultiplexer.Connect("localhost"))
            {
                while (true)
                {
                    var db = connection.GetDatabase();
                    var value = db.ListRightPop(redisKey);
                    if (value.HasValue)
                    {
                        Console.WriteLine(value.ToString());
                        continue;
                    }
                    var sub = connection.GetSubscriber();
                    ManualResetEvent blocker = new ManualResetEvent(false);
                    sub.Subscribe(redisChannel, delegate
                    {
                        blocker.Set();
                    });

                    if (blocker.WaitOne())
                    {
                        value = db.ListRightPop(redisKey);
                    }
                    if (value.HasValue)
                    {
                        //return JsonConvert.DeserializeObject<T>(value);
                        Console.WriteLine(value.ToString());
                        
                    }
                    blocker.Reset();
                }
            }
            Console.Read();
        }


    }
}
