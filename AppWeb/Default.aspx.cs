using System;
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

    protected void ASPxRefresh_Click(object sender, EventArgs e)
    {
        ASPxGridParkingowy.DataBind();
        ASPxGridParkStats.DataBind();
        ASPxGridBeacony.DataBind();
        ASPxGridALL.DataBind();
        ASPxGridALLZajete.DataBind();
    }

    protected void ASPxGridParkingowy_StartRowEditing(object sender, DevExpress.Web.Data.ASPxStartRowEditingEventArgs e)
    {
        
        if (ASPxGridParkingowy.IsEditing)
        {
            ASPxGridView gridView = sender as ASPxGridView;
            for (int i = 0; i < gridView.Columns.Count; i++)
                if (gridView.Columns[i] is GridViewDataColumn)
                {

                    GridViewDataColumn column = gridView.Columns[i] as GridViewDataColumn;
                    if (column.FieldName == "Miejsce_Id") column.ReadOnly = true;

                }
        }
    }

    protected void ASPxGridBeacony_StartRowEditing(object sender, DevExpress.Web.Data.ASPxStartRowEditingEventArgs e)
    {
        if (ASPxGridBeacony.IsEditing)
        {
            ASPxGridView gridView = sender as ASPxGridView;
            for (int i = 0; i < gridView.Columns.Count; i++)
                if (gridView.Columns[i] is GridViewDataColumn)
                {

                    GridViewDataColumn column = gridView.Columns[i] as GridViewDataColumn;
                    if (column.FieldName == "Miejsce_Id") column.ReadOnly = true;

                }
        }
    }
}