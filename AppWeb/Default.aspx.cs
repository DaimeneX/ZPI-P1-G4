﻿using System;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) ASPxGridParkingowy.DataBind();
    }

    protected void ASPxGridDetale_BeforePerformDataSelect(object sender, EventArgs e)
    {
        Session["Miejsce_Id"] = (sender as ASPxGridView).GetMasterRowKeyValue();
    }
}