﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace malak_195413_
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ctl00_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ctl00_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void Insert_Click(object sendr, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("name")).Text;

            SqlDataSource1.InsertParameters["price"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("price")).Text;

            SqlDataSource1.InsertParameters["desc"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("desc")).Text;

            SqlDataSource1.InsertParameters["image"].DefaultValue = @"images\" +
           ((FileUpload)GridView1.FooterRow.FindControl("image")).FileName;
            SqlDataSource1.Insert();
        }
    }
}