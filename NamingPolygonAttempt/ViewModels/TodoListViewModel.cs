using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using NamingPolygonAttempt.Models;
using Dapper;
using NamingPolygonAttempt.Helpers;


namespace NamingPolygonAttempt.ViewModels
{
    // Code taken from "Working with Database" Web Dev Required readings pg 13-14
    public class TodoListViewModel
    {

        public TodoListViewModel()
        {
            using (var db = DBHelper.GetConnection())
            {
                this.EditableItem = new TodoListItem();
                this.TodoItems = db.Query<TodoListItem>("SELECT * FROM TodoListItems").ToList();
            }
        }
        public List<TodoListItem> TodoItems { get; set; }
        public TodoListItem EditableItem { get; set; }
    }
}
