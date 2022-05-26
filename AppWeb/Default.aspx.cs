using System;
using System.Configuration;
using System.Data.SqlClient;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) ASPxGridParkingowy.DataBind();
        PobierzMiejsca();
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

    SqlConnection CreateDBSConnection()
    {
        return new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    }

    public string PobierzMiejsca()
    {
        string CommandString, errorMessage = "OK";

        // Sektor 0A
        string S_0A01 = "";
        string S_0A02 = "";
        string S_0A03 = "";
        string S_0A04 = "";
        string S_0A05 = "";
        string S_0A06 = "";
        string S_0A07 = "";
        string S_0A08 = "";
        string S_0A09 = "";
        string S_0A10 = "";
        string S_0A11 = "";
        string S_0A12 = "";
        string S_0A13 = "";
        string S_0A14 = "";
        string S_0A15 = "";
        string S_0A16 = "";
        string S_0A17 = "";
        string S_0A18 = "";
        string S_0A19 = "";
        string S_0A20 = "";
        string S_0A21 = "";
        string S_0A22 = "";
        string S_0A23 = "";
        string S_0A24 = "";

        // Sektor 0B
        string S_0B01 = "";
        string S_0B02 = "";
        string S_0B03 = "";
        string S_0B04 = "";
        string S_0B05 = "";
        string S_0B06 = "";
        string S_0B07 = "";
        string S_0B08 = "";
        string S_0B09 = "";
        string S_0B10 = "";
        string S_0B11 = "";
        string S_0B12 = "";
        string S_0B13 = "";
        string S_0B14 = "";
        string S_0B15 = "";
        string S_0B16 = "";
        string S_0B17 = "";
        string S_0B18 = "";
        string S_0B19 = "";
        string S_0B20 = "";
        string S_0B21 = "";
        string S_0B22 = "";
        string S_0B23 = "";
        string S_0B24 = "";

        // Sektor 0C
        string S_0C01 = "";
        string S_0C02 = "";
        string S_0C03 = "";
        string S_0C04 = "";
        string S_0C05 = "";
        string S_0C06 = "";
        string S_0C07 = "";
        string S_0C08 = "";
        string S_0C09 = "";
        string S_0C10 = "";
        string S_0C11 = "";
        string S_0C12 = "";
        string S_0C13 = "";
        string S_0C14 = "";
        string S_0C15 = "";
        string S_0C16 = "";
        string S_0C17 = "";
        string S_0C18 = "";
        string S_0C19 = "";
        string S_0C20 = "";
        string S_0C21 = "";

        // Sektor 1A
        string S_1A01 = "";
        string S_1A02 = "";
        string S_1A03 = "";
        string S_1A04 = "";
        string S_1A05 = "";
        string S_1A06 = "";
        string S_1A07 = "";
        string S_1A08 = "";
        string S_1A09 = "";
        string S_1A10 = "";
        string S_1A11 = "";
        string S_1A12 = "";
        string S_1A13 = "";
        string S_1A14 = "";
        string S_1A15 = "";
        string S_1A16 = "";
        string S_1A17 = "";
        string S_1A18 = "";
        string S_1A19 = "";
        string S_1A20 = "";
        string S_1A21 = "";
        string S_1A22 = "";
        string S_1A23 = "";
        string S_1A24 = "";
        string S_1A25 = "";

        // Sektor 1B
        string S_1B01 = "";
        string S_1B02 = "";
        string S_1B03 = "";
        string S_1B04 = "";
        string S_1B05 = "";
        string S_1B06 = "";
        string S_1B07 = "";
        string S_1B08 = "";
        string S_1B09 = "";
        string S_1B10 = "";
        string S_1B11 = "";
        string S_1B12 = "";
        string S_1B13 = "";
        string S_1B14 = "";
        string S_1B15 = "";
        string S_1B16 = "";
        string S_1B17 = "";
        string S_1B18 = "";
        string S_1B19 = "";
        string S_1B20 = "";
        string S_1B21 = "";
        string S_1B22 = "";
        string S_1B23 = "";
        string S_1B24 = "";

        // Sektor 1C
        string S_1C01 = "";
        string S_1C02 = "";
        string S_1C03 = "";
        string S_1C04 = "";
        string S_1C05 = "";
        string S_1C06 = "";
        string S_1C07 = "";
        string S_1C08 = "";
        string S_1C09 = "";
        string S_1C10 = "";
        string S_1C11 = "";
        string S_1C12 = "";
        string S_1C13 = "";
        string S_1C14 = "";
        string S_1C15 = "";
        string S_1C16 = "";
        string S_1C17 = "";
        string S_1C18 = "";
        string S_1C19 = "";
        string S_1C20 = "";
        string S_1C21 = "";


        // Procedura

        CommandString = "exec dbs_Parkingowy_SelectDoMapy";

        SqlConnection connection = CreateDBSConnection();
        SqlCommand cmd = new SqlCommand(CommandString, connection);
        cmd.CommandTimeout = 300;

        try
        {
            connection.Open();
            // Zapisz i pobierz Id zapisanego rekordu
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                S_0A01 = (dr["S0A01"]).ToString();
                S_0A02 = (dr["S0A02"]).ToString();
                S_0A03 = (dr["S0A03"]).ToString();
                S_0A04 = (dr["S0A04"]).ToString();
                S_0A05 = (dr["S0A05"]).ToString();
                S_0A06 = (dr["S0A06"]).ToString();
                S_0A07 = (dr["S0A07"]).ToString();
                S_0A08 = (dr["S0A08"]).ToString();
                S_0A09 = (dr["S0A09"]).ToString();
                S_0A10 = (dr["S0A10"]).ToString();
                S_0A11 = (dr["S0A11"]).ToString();
                S_0A12 = (dr["S0A12"]).ToString();
                S_0A13 = (dr["S0A13"]).ToString();
                S_0A14 = (dr["S0A14"]).ToString();
                S_0A15 = (dr["S0A15"]).ToString();
                S_0A16 = (dr["S0A16"]).ToString();
                S_0A17 = (dr["S0A17"]).ToString();
                S_0A18 = (dr["S0A18"]).ToString();
                S_0A19 = (dr["S0A19"]).ToString();
                S_0A20 = (dr["S0A20"]).ToString();
                S_0A21 = (dr["S0A21"]).ToString();
                S_0A22 = (dr["S0A22"]).ToString();
                S_0A23 = (dr["S0A23"]).ToString();
                S_0A24 = (dr["S0A24"]).ToString();
                S_0B01 = (dr["S0B01"]).ToString();
                S_0B02 = (dr["S0B02"]).ToString();
                S_0B03 = (dr["S0B03"]).ToString();
                S_0B04 = (dr["S0B04"]).ToString();
                S_0B05 = (dr["S0B05"]).ToString();
                S_0B06 = (dr["S0B06"]).ToString();
                S_0B07 = (dr["S0B07"]).ToString();
                S_0B08 = (dr["S0B08"]).ToString();
                S_0B09 = (dr["S0B09"]).ToString();
                S_0B10 = (dr["S0B10"]).ToString();
                S_0B11 = (dr["S0B11"]).ToString();
                S_0B12 = (dr["S0B12"]).ToString();
                S_0B13 = (dr["S0B13"]).ToString();
                S_0B14 = (dr["S0B14"]).ToString();
                S_0B15 = (dr["S0B15"]).ToString();
                S_0B16 = (dr["S0B16"]).ToString();
                S_0B17 = (dr["S0B17"]).ToString();
                S_0B18 = (dr["S0B18"]).ToString();
                S_0B19 = (dr["S0B19"]).ToString();
                S_0B20 = (dr["S0B20"]).ToString();
                S_0B21 = (dr["S0B21"]).ToString();
                S_0B22 = (dr["S0B22"]).ToString();
                S_0B23 = (dr["S0B23"]).ToString();
                S_0B24 = (dr["S0B24"]).ToString();
                S_0C01 = (dr["S0C01"]).ToString();
                S_0C02 = (dr["S0C02"]).ToString();
                S_0C03 = (dr["S0C03"]).ToString();
                S_0C04 = (dr["S0C04"]).ToString();
                S_0C05 = (dr["S0C05"]).ToString();
                S_0C06 = (dr["S0C06"]).ToString();
                S_0C07 = (dr["S0C07"]).ToString();
                S_0C08 = (dr["S0C08"]).ToString();
                S_0C09 = (dr["S0C09"]).ToString();
                S_0C10 = (dr["S0C10"]).ToString();
                S_0C11 = (dr["S0C11"]).ToString();
                S_0C12 = (dr["S0C12"]).ToString();
                S_0C13 = (dr["S0C13"]).ToString();
                S_0C14 = (dr["S0C14"]).ToString();
                S_0C15 = (dr["S0C15"]).ToString();
                S_0C16 = (dr["S0C16"]).ToString();
                S_0C17 = (dr["S0C17"]).ToString();
                S_0C18 = (dr["S0C18"]).ToString();
                S_0C19 = (dr["S0C19"]).ToString();
                S_0C20 = (dr["S0C20"]).ToString();
                S_0C21 = (dr["S0C21"]).ToString();
                S_1A01 = (dr["S1A01"]).ToString();
                S_1A02 = (dr["S1A02"]).ToString();
                S_1A03 = (dr["S1A03"]).ToString();
                S_1A04 = (dr["S1A04"]).ToString();
                S_1A05 = (dr["S1A05"]).ToString();
                S_1A06 = (dr["S1A06"]).ToString();
                S_1A07 = (dr["S1A07"]).ToString();
                S_1A08 = (dr["S1A08"]).ToString();
                S_1A09 = (dr["S1A09"]).ToString();
                S_1A10 = (dr["S1A10"]).ToString();
                S_1A11 = (dr["S1A11"]).ToString();
                S_1A12 = (dr["S1A12"]).ToString();
                S_1A13 = (dr["S1A13"]).ToString();
                S_1A14 = (dr["S1A14"]).ToString();
                S_1A15 = (dr["S1A15"]).ToString();
                S_1A16 = (dr["S1A16"]).ToString();
                S_1A17 = (dr["S1A17"]).ToString();
                S_1A18 = (dr["S1A18"]).ToString();
                S_1A19 = (dr["S1A19"]).ToString();
                S_1A20 = (dr["S1A20"]).ToString();
                S_1A21 = (dr["S1A21"]).ToString();
                S_1A22 = (dr["S1A22"]).ToString();
                S_1A23 = (dr["S1A23"]).ToString();
                S_1A24 = (dr["S1A24"]).ToString();
                S_1A25 = (dr["S1A25"]).ToString();
                S_1B01 = (dr["S1B01"]).ToString();
                S_1B02 = (dr["S1B02"]).ToString();
                S_1B03 = (dr["S1B03"]).ToString();
                S_1B04 = (dr["S1B04"]).ToString();
                S_1B05 = (dr["S1B05"]).ToString();
                S_1B06 = (dr["S1B06"]).ToString();
                S_1B07 = (dr["S1B07"]).ToString();
                S_1B08 = (dr["S1B08"]).ToString();
                S_1B09 = (dr["S1B09"]).ToString();
                S_1B10 = (dr["S1B10"]).ToString();
                S_1B11 = (dr["S1B11"]).ToString();
                S_1B12 = (dr["S1B12"]).ToString();
                S_1B13 = (dr["S1B13"]).ToString();
                S_1B14 = (dr["S1B14"]).ToString();
                S_1B15 = (dr["S1B15"]).ToString();
                S_1B16 = (dr["S1B16"]).ToString();
                S_1B17 = (dr["S1B17"]).ToString();
                S_1B18 = (dr["S1B18"]).ToString();
                S_1B19 = (dr["S1B19"]).ToString();
                S_1B20 = (dr["S1B20"]).ToString();
                S_1B21 = (dr["S1B21"]).ToString();
                S_1B22 = (dr["S1B22"]).ToString();
                S_1B23 = (dr["S1B23"]).ToString();
                S_1B24 = (dr["S1B24"]).ToString();
                S_1C01 = (dr["S1C01"]).ToString();
                S_1C02 = (dr["S1C02"]).ToString();
                S_1C03 = (dr["S1C03"]).ToString();
                S_1C04 = (dr["S1C04"]).ToString();
                S_1C05 = (dr["S1C05"]).ToString();
                S_1C06 = (dr["S1C06"]).ToString();
                S_1C07 = (dr["S1C07"]).ToString();
                S_1C08 = (dr["S1C08"]).ToString();
                S_1C09 = (dr["S1C09"]).ToString();
                S_1C10 = (dr["S1C10"]).ToString();
                S_1C11 = (dr["S1C11"]).ToString();
                S_1C12 = (dr["S1C12"]).ToString();
                S_1C13 = (dr["S1C13"]).ToString();
                S_1C14 = (dr["S1C14"]).ToString();
                S_1C15 = (dr["S1C15"]).ToString();
                S_1C16 = (dr["S1C16"]).ToString();
                S_1C17 = (dr["S1C17"]).ToString();
                S_1C18 = (dr["S1C18"]).ToString();
                S_1C19 = (dr["S1C19"]).ToString();
                S_1C20 = (dr["S1C20"]).ToString();
                S_1C21 = (dr["S1C21"]).ToString();
            }
        }
        catch (SqlException ex)
        {
            errorMessage = ex.Errors[0].Message;
        }
        finally
        {
            connection.Close();
        }

        
        // Sektor 0A
        ASP_0A01.Checked = Convert.ToBoolean(S_0A01);
        ASP_0A02.Checked = Convert.ToBoolean(S_0A02);
        ASP_0A03.Checked = Convert.ToBoolean(S_0A03);
        ASP_0A04.Checked = Convert.ToBoolean(S_0A04);
        ASP_0A05.Checked = Convert.ToBoolean(S_0A05);
        ASP_0A06.Checked = Convert.ToBoolean(S_0A06);
        ASP_0A07.Checked = Convert.ToBoolean(S_0A07);
        ASP_0A08.Checked = Convert.ToBoolean(S_0A08);
        ASP_0A09.Checked = Convert.ToBoolean(S_0A09);
        ASP_0A10.Checked = Convert.ToBoolean(S_0A10);
        ASP_0A11.Checked = Convert.ToBoolean(S_0A11);
        ASP_0A12.Checked = Convert.ToBoolean(S_0A12);
        ASP_0A13.Checked = Convert.ToBoolean(S_0A13);
        ASP_0A14.Checked = Convert.ToBoolean(S_0A14);
        ASP_0A15.Checked = Convert.ToBoolean(S_0A15);
        ASP_0A16.Checked = Convert.ToBoolean(S_0A16);
        ASP_0A17.Checked = Convert.ToBoolean(S_0A17);
        ASP_0A18.Checked = Convert.ToBoolean(S_0A18);
        ASP_0A19.Checked = Convert.ToBoolean(S_0A19);
        ASP_0A20.Checked = Convert.ToBoolean(S_0A20);
        ASP_0A21.Checked = Convert.ToBoolean(S_0A21);
        ASP_0A22.Checked = Convert.ToBoolean(S_0A22);
        ASP_0A23.Checked = Convert.ToBoolean(S_0A23);
        ASP_0A24.Checked = Convert.ToBoolean(S_0A24);

        // Sektor 0B
        ASP_0B01.Checked = Convert.ToBoolean(S_0B01);
        ASP_0B02.Checked = Convert.ToBoolean(S_0B02);
        ASP_0B03.Checked = Convert.ToBoolean(S_0B03);
        ASP_0B04.Checked = Convert.ToBoolean(S_0B04);
        ASP_0B05.Checked = Convert.ToBoolean(S_0B05);
        ASP_0B06.Checked = Convert.ToBoolean(S_0B06);
        ASP_0B07.Checked = Convert.ToBoolean(S_0B07);
        ASP_0B08.Checked = Convert.ToBoolean(S_0B08);
        ASP_0B09.Checked = Convert.ToBoolean(S_0B09);
        ASP_0B10.Checked = Convert.ToBoolean(S_0B10);
        ASP_0B11.Checked = Convert.ToBoolean(S_0B11);
        ASP_0B12.Checked = Convert.ToBoolean(S_0B12);
        ASP_0B13.Checked = Convert.ToBoolean(S_0B13);
        ASP_0B14.Checked = Convert.ToBoolean(S_0B14);
        ASP_0B15.Checked = Convert.ToBoolean(S_0B15);
        ASP_0B16.Checked = Convert.ToBoolean(S_0B16);
        ASP_0B17.Checked = Convert.ToBoolean(S_0B17);
        ASP_0B18.Checked = Convert.ToBoolean(S_0B18);
        ASP_0B19.Checked = Convert.ToBoolean(S_0B19);
        ASP_0B20.Checked = Convert.ToBoolean(S_0B20);
        ASP_0B21.Checked = Convert.ToBoolean(S_0B21);
        ASP_0B22.Checked = Convert.ToBoolean(S_0B22);
        ASP_0B23.Checked = Convert.ToBoolean(S_0B23);
        ASP_0B24.Checked = Convert.ToBoolean(S_0B24);

        // Sektor 0C
        ASP_0C01.Checked = Convert.ToBoolean(S_0C01);
        ASP_0C02.Checked = Convert.ToBoolean(S_0C02);
        ASP_0C03.Checked = Convert.ToBoolean(S_0C03);
        ASP_0C04.Checked = Convert.ToBoolean(S_0C04);
        ASP_0C05.Checked = Convert.ToBoolean(S_0C05);
        ASP_0C06.Checked = Convert.ToBoolean(S_0C06);
        ASP_0C07.Checked = Convert.ToBoolean(S_0C07);
        ASP_0C08.Checked = Convert.ToBoolean(S_0C08);
        ASP_0C09.Checked = Convert.ToBoolean(S_0C09);
        ASP_0C10.Checked = Convert.ToBoolean(S_0C10);
        ASP_0C11.Checked = Convert.ToBoolean(S_0C11);
        ASP_0C12.Checked = Convert.ToBoolean(S_0C12);
        ASP_0C13.Checked = Convert.ToBoolean(S_0C13);
        ASP_0C14.Checked = Convert.ToBoolean(S_0C14);
        ASP_0C15.Checked = Convert.ToBoolean(S_0C15);
        ASP_0C16.Checked = Convert.ToBoolean(S_0C16);
        ASP_0C17.Checked = Convert.ToBoolean(S_0C17);
        ASP_0C18.Checked = Convert.ToBoolean(S_0C18);
        ASP_0C19.Checked = Convert.ToBoolean(S_0C19);
        ASP_0C20.Checked = Convert.ToBoolean(S_0C20);
        ASP_0C21.Checked = Convert.ToBoolean(S_0C21);

        // Sektor 1A
        ASP_1A01.Checked = Convert.ToBoolean(S_1A01);
        ASP_1A02.Checked = Convert.ToBoolean(S_1A02);
        ASP_1A03.Checked = Convert.ToBoolean(S_1A03);
        ASP_1A04.Checked = Convert.ToBoolean(S_1A04);
        ASP_1A05.Checked = Convert.ToBoolean(S_1A05);
        ASP_1A06.Checked = Convert.ToBoolean(S_1A06);
        ASP_1A07.Checked = Convert.ToBoolean(S_1A07);
        ASP_1A08.Checked = Convert.ToBoolean(S_1A08);
        ASP_1A09.Checked = Convert.ToBoolean(S_1A09);
        ASP_1A10.Checked = Convert.ToBoolean(S_1A10);
        ASP_1A11.Checked = Convert.ToBoolean(S_1A11);
        ASP_1A12.Checked = Convert.ToBoolean(S_1A12);
        ASP_1A13.Checked = Convert.ToBoolean(S_1A13);
        ASP_1A14.Checked = Convert.ToBoolean(S_1A14);
        ASP_1A15.Checked = Convert.ToBoolean(S_1A15);
        ASP_1A16.Checked = Convert.ToBoolean(S_1A16);
        ASP_1A17.Checked = Convert.ToBoolean(S_1A17);
        ASP_1A18.Checked = Convert.ToBoolean(S_1A18);
        ASP_1A19.Checked = Convert.ToBoolean(S_1A19);
        ASP_1A20.Checked = Convert.ToBoolean(S_1A20);
        ASP_1A21.Checked = Convert.ToBoolean(S_1A21);
        ASP_1A22.Checked = Convert.ToBoolean(S_1A22);
        ASP_1A23.Checked = Convert.ToBoolean(S_1A23);
        ASP_1A24.Checked = Convert.ToBoolean(S_1A24);
        ASP_1A25.Checked = Convert.ToBoolean(S_1A25);

        // Sektor 1B
        ASP_1B01.Checked = Convert.ToBoolean(S_1B01);
        ASP_1B02.Checked = Convert.ToBoolean(S_1B02);
        ASP_1B03.Checked = Convert.ToBoolean(S_1B03);
        ASP_1B04.Checked = Convert.ToBoolean(S_1B04);
        ASP_1B05.Checked = Convert.ToBoolean(S_1B05);
        ASP_1B06.Checked = Convert.ToBoolean(S_1B06);
        ASP_1B07.Checked = Convert.ToBoolean(S_1B07);
        ASP_1B08.Checked = Convert.ToBoolean(S_1B08);
        ASP_1B09.Checked = Convert.ToBoolean(S_1B09);
        ASP_1B10.Checked = Convert.ToBoolean(S_1B10);
        ASP_1B11.Checked = Convert.ToBoolean(S_1B11);
        ASP_1B12.Checked = Convert.ToBoolean(S_1B12);
        ASP_1B13.Checked = Convert.ToBoolean(S_1B13);
        ASP_1B14.Checked = Convert.ToBoolean(S_1B14);
        ASP_1B15.Checked = Convert.ToBoolean(S_1B15);
        ASP_1B16.Checked = Convert.ToBoolean(S_1B16);
        ASP_1B17.Checked = Convert.ToBoolean(S_1B17);
        ASP_1B18.Checked = Convert.ToBoolean(S_1B18);
        ASP_1B19.Checked = Convert.ToBoolean(S_1B19);
        ASP_1B20.Checked = Convert.ToBoolean(S_1B20);
        ASP_1B21.Checked = Convert.ToBoolean(S_1B21);
        ASP_1B22.Checked = Convert.ToBoolean(S_1B22);
        ASP_1B23.Checked = Convert.ToBoolean(S_1B23);
        ASP_1B24.Checked = Convert.ToBoolean(S_1B24);

        // Sektor 1C
        ASP_1C01.Checked = Convert.ToBoolean(S_1C01);
        ASP_1C02.Checked = Convert.ToBoolean(S_1C02);
        ASP_1C03.Checked = Convert.ToBoolean(S_1C03);
        ASP_1C04.Checked = Convert.ToBoolean(S_1C04);
        ASP_1C05.Checked = Convert.ToBoolean(S_1C05);
        ASP_1C06.Checked = Convert.ToBoolean(S_1C06);
        ASP_1C07.Checked = Convert.ToBoolean(S_1C07);
        ASP_1C08.Checked = Convert.ToBoolean(S_1C08);
        ASP_1C09.Checked = Convert.ToBoolean(S_1C09);
        ASP_1C10.Checked = Convert.ToBoolean(S_1C10);
        ASP_1C11.Checked = Convert.ToBoolean(S_1C11);
        ASP_1C12.Checked = Convert.ToBoolean(S_1C12);
        ASP_1C13.Checked = Convert.ToBoolean(S_1C13);
        ASP_1C14.Checked = Convert.ToBoolean(S_1C14);
        ASP_1C15.Checked = Convert.ToBoolean(S_1C15);
        ASP_1C16.Checked = Convert.ToBoolean(S_1C16);
        ASP_1C17.Checked = Convert.ToBoolean(S_1C17);
        ASP_1C18.Checked = Convert.ToBoolean(S_1C18);
        ASP_1C19.Checked = Convert.ToBoolean(S_1C19);
        ASP_1C20.Checked = Convert.ToBoolean(S_1C20);
        ASP_1C21.Checked = Convert.ToBoolean(S_1C21);
        return errorMessage;
    }

    protected void cbMain_Callback(object source, CallbackEventArgs e)
    {        

        string CommandString, errorMessage = "OK";
        CommandString = "exec dbs_Parkingowy_SelectDoMapy";

        SqlConnection connection = CreateDBSConnection();
        SqlCommand cmd = new SqlCommand(CommandString, connection);
        cmd.CommandTimeout = 300;
        
        try
        {
            connection.Open();
            // Zapisz i pobierz Id zapisanego rekordu
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ((ASPxCallback)source).JSProperties.Add("cpS_0A01", (dr["S0A01"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A02", (dr["S0A02"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A03", (dr["S0A03"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A04", (dr["S0A04"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A05", (dr["S0A05"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A06", (dr["S0A06"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A07", (dr["S0A07"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A08", (dr["S0A08"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A09", (dr["S0A09"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A10", (dr["S0A10"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A11", (dr["S0A11"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A12", (dr["S0A12"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A13", (dr["S0A13"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A14", (dr["S0A14"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A15", (dr["S0A15"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A16", (dr["S0A16"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A17", (dr["S0A17"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A18", (dr["S0A18"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A19", (dr["S0A19"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A20", (dr["S0A20"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A21", (dr["S0A21"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A22", (dr["S0A22"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A23", (dr["S0A23"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0A24", (dr["S0A24"]));

                ((ASPxCallback)source).JSProperties.Add("cpS_0B01", (dr["S0B01"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B02", (dr["S0B02"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B03", (dr["S0B03"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B04", (dr["S0B04"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B05", (dr["S0B05"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B06", (dr["S0B06"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B07", (dr["S0B07"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B08", (dr["S0B08"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B09", (dr["S0B09"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B10", (dr["S0B10"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B11", (dr["S0B11"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B12", (dr["S0B12"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B13", (dr["S0B13"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B14", (dr["S0B14"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B15", (dr["S0B15"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B16", (dr["S0B16"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B17", (dr["S0B17"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B18", (dr["S0B18"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B19", (dr["S0B19"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B20", (dr["S0B20"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B21", (dr["S0B21"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B22", (dr["S0B22"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B23", (dr["S0B23"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0B24", (dr["S0B24"]));

                ((ASPxCallback)source).JSProperties.Add("cpS_0C01", (dr["S0C01"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C02", (dr["S0C02"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C03", (dr["S0C03"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C04", (dr["S0C04"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C05", (dr["S0C05"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C06", (dr["S0C06"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C07", (dr["S0C07"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C08", (dr["S0C08"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C09", (dr["S0C09"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C10", (dr["S0C10"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C11", (dr["S0C11"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C12", (dr["S0C12"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C13", (dr["S0C13"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C14", (dr["S0C14"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C15", (dr["S0C15"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C16", (dr["S0C16"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C17", (dr["S0C17"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C18", (dr["S0C18"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C19", (dr["S0C19"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C20", (dr["S0C20"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_0C21", (dr["S0C21"]));

                ((ASPxCallback)source).JSProperties.Add("cpS_1A01", (dr["S1A01"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A02", (dr["S1A02"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A03", (dr["S1A03"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A04", (dr["S1A04"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A05", (dr["S1A05"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A06", (dr["S1A06"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A07", (dr["S1A07"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A08", (dr["S1A08"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A09", (dr["S1A09"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A10", (dr["S1A10"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A11", (dr["S1A11"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A12", (dr["S1A12"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A13", (dr["S1A13"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A14", (dr["S1A14"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A15", (dr["S1A15"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A16", (dr["S1A16"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A17", (dr["S1A17"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A18", (dr["S1A18"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A19", (dr["S1A19"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A20", (dr["S1A20"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A21", (dr["S1A21"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A22", (dr["S1A22"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A23", (dr["S1A23"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A24", (dr["S1A24"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1A25", (dr["S1A25"]));

                ((ASPxCallback)source).JSProperties.Add("cpS_1B01", (dr["S1B01"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B02", (dr["S1B02"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B03", (dr["S1B03"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B04", (dr["S1B04"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B05", (dr["S1B05"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B06", (dr["S1B06"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B07", (dr["S1B07"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B08", (dr["S1B08"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B09", (dr["S1B09"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B10", (dr["S1B10"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B11", (dr["S1B11"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B12", (dr["S1B12"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B13", (dr["S1B13"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B14", (dr["S1B14"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B15", (dr["S1B15"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B16", (dr["S1B16"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B17", (dr["S1B17"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B18", (dr["S1B18"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B19", (dr["S1B19"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B20", (dr["S1B20"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B21", (dr["S1B21"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B22", (dr["S1B22"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B23", (dr["S1B23"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1B24", (dr["S1B24"]));

                ((ASPxCallback)source).JSProperties.Add("cpS_1C01", (dr["S1C01"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C02", (dr["S1C02"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C03", (dr["S1C03"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C04", (dr["S1C04"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C05", (dr["S1C05"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C06", (dr["S1C06"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C07", (dr["S1C07"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C08", (dr["S1C08"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C09", (dr["S1C09"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C10", (dr["S1C10"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C11", (dr["S1C11"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C12", (dr["S1C12"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C13", (dr["S1C13"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C14", (dr["S1C14"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C15", (dr["S1C15"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C16", (dr["S1C16"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C17", (dr["S1C17"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C18", (dr["S1C18"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C19", (dr["S1C19"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C20", (dr["S1C20"]));
                ((ASPxCallback)source).JSProperties.Add("cpS_1C21", (dr["S1C21"]));
            }
        }
        catch (SqlException ex)
        {
            errorMessage = ex.Errors[0].Message;
        }
        finally
        {
            connection.Close();
        }

                
    }
}