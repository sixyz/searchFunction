using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace searchFunctionality
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectQuery = "SELECT Employees.Title AS title, " +
                                "Employees.Firstname AS firstname, " +
                                "Employees.Lastname AS lastname, " +
                                "Employees.Email AS email " +
                                "FROM Employees " +
                                "ORDER BY Employees.Firstname";

            EmployeesDataSource.SelectCommand = selectQuery;

            grdEmployees.DataBind();
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if(textboxSearch.Text != "")
            {
                string searchText = textboxSearch.Text;

                string selectQuery = "SELECT Employees.Title AS title, " +
                                    "Employees.Firstname AS firstname, " +
                                    "Employees.Lastname AS lastname, " +
                                    "Employees.Email as email " +
                                    "FROM Employees " +
                                    "WHERE Employees.Firstname LIKE'%" + searchText + "%' OR " +
                                    "Employees.Lastname LIKE'%" + searchText + "%' OR " +
                                    "Employees.Email LIKE'%" + searchText + "%' " +
                                    "ORDER BY Employees.Firstname";

                EmployeesDataSource.SelectCommand = selectQuery;

                grdEmployees.DataBind();
                
            }
        }
    }
}