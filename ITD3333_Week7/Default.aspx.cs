using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }


    protected void vldCode(Object source, ServerValidateEventArgs e)
    {
        try
        {
            int val = Int32.Parse(e.Value.Substring(0, 3));
            if(val %7 == 0)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }
        catch
        {
            e.IsValid = false;
        }
    }



    protected void cancelBtn_Click(object sender, EventArgs e)
    {

    }

    protected void submitBtn_Click(object sender, EventArgs e)
    {

    }
}