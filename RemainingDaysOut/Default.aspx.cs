using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RemainingDaysOut
    {
    public partial class Default : Page
        {
        protected void Page_Load(object sender, EventArgs e)
            {
            
            }

        

        protected void Button_Calc_Click(object sender, EventArgs e)
            {

            DateTime MyToday;

            if (Calendar.SelectedDate > Calendar.TodaysDate)
                {
                 MyToday = Calendar.SelectedDate;
                }
            else
                {
                 MyToday = Calendar.TodaysDate;
                }

            

            DateTime MyFutureDay = Calendar_Projected.SelectedDate;
            TimeSpan days = Calendar.SelectedDate - Calendar.TodaysDate;

            if (Calendar.SelectedDate > Calendar.TodaysDate)
                {
                Label_RDO.Text = (days.Days.ToString() + " days");
                }
            else
                {
                Calendar.SelectedDate = Calendar.TodaysDate;
                }


            if (Calendar.SelectedDate >= Calendar.TodaysDate && Calendar_Projected.SelectedDate > Calendar.SelectedDate)
                {
                TimeSpan results;
                results = MyFutureDay.Subtract(MyToday);
                
                Label_RDO.Text = results.Days.ToString() + " days"; 
                }

            


            }
        }
    }
        
    
