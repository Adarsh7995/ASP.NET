using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinqToObjects
{
    public class Employee
    {
        public string FirstName
        {
            get;
            set;
        }
        public string LastName
        {
            get;
            set;
        }
        public int Age
        {
            get;
            set;
        }
        public decimal Salary
        {
            get;
            set;
        }
        public Employee(string fn, string ln, int age, decimal sal)
        {
            FirstName = fn;
            LastName = ln;
            Age = age;
            Salary = sal;
        }
    }
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Employee> elist = new List<Employee>();
            elist.Add(new Employee("Adarsh", "Udiyana",20, 75000.0m));
            elist.Add(new Employee("Aravind", "Udiyana",17, 65000.0m));
            elist.Add(new Employee("Sravanth", "Chowdary",16, 66000.0m));
            elist.Add(new Employee("Sowmya", "Chowdary", 20, 65000.0m));

            var result = from Employee in elist where Employee.Salary > 21000.0m select Employee.FirstName + " " + Employee.LastName;
            EmployeeGrid.DataSource = result;
            EmployeeGrid.DataBind();
        }
    }
}