// Reference C# Syntax Highlighting File
// Use this to test VS Code themes

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

#nullable enable

namespace ThemeTestSample
{
    /// <summary>
    /// Demonstrates XML documentation, generics, attributes, and more.
    /// </summary>
    [Obsolete("This class is only for theme testing.")]
    public class DemoClass<T> where T : class
    {
        public const int MaxValue = 42;
        private readonly string _name;
        private T _data;

        public event EventHandler<EventArgs>? SomethingHappened;

        public DemoClass(string name, T data)
        {
            _name = name;
            _data = data;
        }

        /// <summary>
        /// Async method with LINQ, exceptions, and pattern matching.
        /// </summary>
        public async Task<int> ProcessAsync(IEnumerable<int> values)
        {
            await Task.Delay(100);

            var filtered = values
                .Where(v => v % 2 == 0)
                .Select(v => v * MaxValue)
                .ToList();

            foreach (var item in filtered)
            {
                Console.WriteLine($"Value: {item}");
            }

            try
            {
                return filtered.FirstOrDefault() switch
                {
                    > 100 => 1,
                    < 0 => -1,
                    _ => 0
                };
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.Message);
                throw;
            }
        }

        public void TriggerEvent()
        {
            SomethingHappened?.Invoke(this, EventArgs.Empty);
        }
    }

    public interface IWorker
    {
        void DoWork();
    }

    public enum Status
    {
        None,
        Running,
        Completed,
        Failed
    }

    public struct DemoStruct
    {
        public int X;
        public int Y;

        public override string ToString() => $"({X}, {Y})";
    }

    public static class Program
    {
        static void Main(string[] args)
        {
            var demo = new DemoClass<string>("Test", "Data");
            demo.TriggerEvent();

            IWorker worker = new ConsoleWorker();
            worker.DoWork();

            Console.WriteLine(Status.Completed);
        }
    }

    public class ConsoleWorker : IWorker
    {
        public void DoWork()
        {
            Console.WriteLine("Working...");
        }
    }
}
