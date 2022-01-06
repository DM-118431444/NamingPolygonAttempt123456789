using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NamingPolygonAttempt.Models
{
    public class TodoListItem
    {
        public int Id { get; set; }
        public int FarmerID { get; set; }
        public bool IsDone { get; set; }
        public j GeoJson { get; set; } 
    }
}
