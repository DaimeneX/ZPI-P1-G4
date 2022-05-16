<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MasterPageHead" runat="Server">
    <script type="text/javascript">

        function ChangeSektor() {
            ASPxGridParkingowy.Refresh();
            ASPxGridBeacony.Refresh();
        }


        function RefreshAll(s, e) {
            ASPxGridParkingowy.Refresh();
            ASPxGridParkStats.Refresh();
            ASPxGridBeacony.Refresh();
            ASPxGridALL.Refresh();
            ASPxGridALLZajete.Refresh();
            ASPxEkranyPoziom0.Refresh();
            ASPxEkranyPoziom1.Refresh();
            cbCallback(s, e);
        }

        function cbMain_EndCallback(s, e) {
            cpASP_0A01 = s.cpS_0A01;
            cpASP_0A02 = s.cpS_0A02;
            cpASP_0A03 = s.cpS_0A03;
            cpASP_0A04 = s.cpS_0A04;
            cpASP_0A05 = s.cpS_0A05;
            cpASP_0A06 = s.cpS_0A06;
            cpASP_0A07 = s.cpS_0A07;
            cpASP_0A08 = s.cpS_0A08;
            cpASP_0A09 = s.cpS_0A09;
            cpASP_0A10 = s.cpS_0A10;
            cpASP_0A11 = s.cpS_0A11;
            cpASP_0A12 = s.cpS_0A12;
            cpASP_0A13 = s.cpS_0A13;
            cpASP_0A14 = s.cpS_0A14;
            cpASP_0A15 = s.cpS_0A15;
            cpASP_0A16 = s.cpS_0A16;
            cpASP_0A17 = s.cpS_0A17;
            cpASP_0A18 = s.cpS_0A18;
            cpASP_0A19 = s.cpS_0A19;
            cpASP_0A20 = s.cpS_0A20;
            cpASP_0A21 = s.cpS_0A21;
            cpASP_0A22 = s.cpS_0A22;
            cpASP_0A23 = s.cpS_0A23;
            cpASP_0A24 = s.cpS_0A24;

            cpASP_0B01 = s.cpS_0B01;
            cpASP_0B02 = s.cpS_0B02;
            cpASP_0B03 = s.cpS_0B03;
            cpASP_0B04 = s.cpS_0B04;
            cpASP_0B05 = s.cpS_0B05;
            cpASP_0B06 = s.cpS_0B06;
            cpASP_0B07 = s.cpS_0B07;
            cpASP_0B08 = s.cpS_0B08;
            cpASP_0B09 = s.cpS_0B09;
            cpASP_0B10 = s.cpS_0B10;
            cpASP_0B11 = s.cpS_0B11;
            cpASP_0B12 = s.cpS_0B12;
            cpASP_0B13 = s.cpS_0B13;
            cpASP_0B14 = s.cpS_0B14;
            cpASP_0B15 = s.cpS_0B15;
            cpASP_0B16 = s.cpS_0B16;
            cpASP_0B17 = s.cpS_0B17;
            cpASP_0B18 = s.cpS_0B18;
            cpASP_0B19 = s.cpS_0B19;
            cpASP_0B20 = s.cpS_0B20;
            cpASP_0B21 = s.cpS_0B21;
            cpASP_0B22 = s.cpS_0B22;
            cpASP_0B23 = s.cpS_0B23;
            cpASP_0B24 = s.cpS_0B24;

            cpASP_0C01 = s.cpS_0C01;
            cpASP_0C02 = s.cpS_0C02;
            cpASP_0C03 = s.cpS_0C03;
            cpASP_0C04 = s.cpS_0C04;
            cpASP_0C05 = s.cpS_0C05;
            cpASP_0C06 = s.cpS_0C06;
            cpASP_0C07 = s.cpS_0C07;
            cpASP_0C08 = s.cpS_0C08;
            cpASP_0C09 = s.cpS_0C09;
            cpASP_0C10 = s.cpS_0C10;
            cpASP_0C11 = s.cpS_0C11;
            cpASP_0C12 = s.cpS_0C12;
            cpASP_0C13 = s.cpS_0C13;
            cpASP_0C14 = s.cpS_0C14;
            cpASP_0C15 = s.cpS_0C15;
            cpASP_0C16 = s.cpS_0C16;
            cpASP_0C17 = s.cpS_0C17;
            cpASP_0C18 = s.cpS_0C18;
            cpASP_0C19 = s.cpS_0C19;
            cpASP_0C20 = s.cpS_0C20;
            cpASP_0C21 = s.cpS_0C21;

            cpASP_1A01 = s.cpS_1A01;
            cpASP_1A02 = s.cpS_1A02;
            cpASP_1A03 = s.cpS_1A03;
            cpASP_1A04 = s.cpS_1A04;
            cpASP_1A05 = s.cpS_1A05;
            cpASP_1A06 = s.cpS_1A06;
            cpASP_1A07 = s.cpS_1A07;
            cpASP_1A08 = s.cpS_1A08;
            cpASP_1A09 = s.cpS_1A09;
            cpASP_1A10 = s.cpS_1A10;
            cpASP_1A11 = s.cpS_1A11;
            cpASP_1A12 = s.cpS_1A12;
            cpASP_1A13 = s.cpS_1A13;
            cpASP_1A14 = s.cpS_1A14;
            cpASP_1A15 = s.cpS_1A15;
            cpASP_1A16 = s.cpS_1A16;
            cpASP_1A17 = s.cpS_1A17;
            cpASP_1A18 = s.cpS_1A18;
            cpASP_1A19 = s.cpS_1A19;
            cpASP_1A20 = s.cpS_1A20;
            cpASP_1A21 = s.cpS_1A21;
            cpASP_1A22 = s.cpS_1A22;
            cpASP_1A23 = s.cpS_1A23;
            cpASP_1A24 = s.cpS_1A24;
            cpASP_1A25 = s.cpS_1A25;

            cpASP_1B01 = s.cpS_1B01;
            cpASP_1B02 = s.cpS_1B02;
            cpASP_1B03 = s.cpS_1B03;
            cpASP_1B04 = s.cpS_1B04;
            cpASP_1B05 = s.cpS_1B05;
            cpASP_1B06 = s.cpS_1B06;
            cpASP_1B07 = s.cpS_1B07;
            cpASP_1B08 = s.cpS_1B08;
            cpASP_1B09 = s.cpS_1B09;
            cpASP_1B10 = s.cpS_1B10;
            cpASP_1B11 = s.cpS_1B11;
            cpASP_1B12 = s.cpS_1B12;
            cpASP_1B13 = s.cpS_1B13;
            cpASP_1B14 = s.cpS_1B14;
            cpASP_1B15 = s.cpS_1B15;
            cpASP_1B16 = s.cpS_1B16;
            cpASP_1B17 = s.cpS_1B17;
            cpASP_1B18 = s.cpS_1B18;
            cpASP_1B19 = s.cpS_1B19;
            cpASP_1B20 = s.cpS_1B20;
            cpASP_1B21 = s.cpS_1B21;
            cpASP_1B22 = s.cpS_1B22;
            cpASP_1B23 = s.cpS_1B23;
            cpASP_1B24 = s.cpS_1B24;

            cpASP_1C01 = s.cpS_1C01;
            cpASP_1C02 = s.cpS_1C02;
            cpASP_1C03 = s.cpS_1C03;
            cpASP_1C04 = s.cpS_1C04;
            cpASP_1C05 = s.cpS_1C05;
            cpASP_1C06 = s.cpS_1C06;
            cpASP_1C07 = s.cpS_1C07;
            cpASP_1C08 = s.cpS_1C08;
            cpASP_1C09 = s.cpS_1C09;
            cpASP_1C10 = s.cpS_1C10;
            cpASP_1C11 = s.cpS_1C11;
            cpASP_1C12 = s.cpS_1C12;
            cpASP_1C13 = s.cpS_1C13;
            cpASP_1C14 = s.cpS_1C14;
            cpASP_1C15 = s.cpS_1C15;
            cpASP_1C16 = s.cpS_1C16;
            cpASP_1C17 = s.cpS_1C17;
            cpASP_1C18 = s.cpS_1C18;
            cpASP_1C19 = s.cpS_1C19;
            cpASP_1C20 = s.cpS_1C20;
            cpASP_1C21 = s.cpS_1C21;

            if (cpASP_0A01 === 'false') { ASP_0A01.SetChecked(false); }
            else if (cpASP_0A01 === 'true') { ASP_0A01.SetChecked(true); }
            else { ASP_0A01.SetChecked(false); }

            if (cpASP_0A02 === 'false') { ASP_0A02.SetChecked(false); }
            else if (cpASP_0A02 === 'true') { ASP_0A02.SetChecked(true); }
            else { ASP_0A02.SetChecked(false); }

            if (cpASP_0A03 === 'false') { ASP_0A03.SetChecked(false); }
            else if (cpASP_0A03 === 'true') { ASP_0A03.SetChecked(true); }
            else { ASP_0A03.SetChecked(false); }

            if (cpASP_0A04 === 'false') { ASP_0A04.SetChecked(false); }
            else if (cpASP_0A04 === 'true') { ASP_0A04.SetChecked(true); }
            else { ASP_0A04.SetChecked(false); }

            if (cpASP_0A05 === 'false') { ASP_0A05.SetChecked(false); }
            else if (cpASP_0A05 === 'true') { ASP_0A05.SetChecked(true); }
            else { ASP_0A05.SetChecked(false); }

            if (cpASP_0A06 === 'false') { ASP_0A06.SetChecked(false); }
            else if (cpASP_0A06 === 'true') { ASP_0A06.SetChecked(true); }
            else { ASP_0A06.SetChecked(false); }

            if (cpASP_0A07 === 'false') { ASP_0A07.SetChecked(false); }
            else if (cpASP_0A07 === 'true') { ASP_0A07.SetChecked(true); }
            else { ASP_0A07.SetChecked(false); }

            if (cpASP_0A08 === 'false') { ASP_0A08.SetChecked(false); }
            else if (cpASP_0A08 === 'true') { ASP_0A08.SetChecked(true); }
            else { ASP_0A08.SetChecked(false); }

            if (cpASP_0A09 === 'false') { ASP_0A09.SetChecked(false); }
            else if (cpASP_0A09 === 'true') { ASP_0A09.SetChecked(true); }
            else { ASP_0A09.SetChecked(false); }

            if (cpASP_0A10 === 'false') { ASP_0A10.SetChecked(false); }
            else if (cpASP_0A10 === 'true') { ASP_0A10.SetChecked(true); }
            else { ASP_0A10.SetChecked(false); }

            if (cpASP_0A11 === 'false') { ASP_0A11.SetChecked(false); }
            else if (cpASP_0A11 === 'true') { ASP_0A11.SetChecked(true); }
            else { ASP_0A11.SetChecked(false); }

            if (cpASP_0A12 === 'false') { ASP_0A12.SetChecked(false); }
            else if (cpASP_0A12 === 'true') { ASP_0A12.SetChecked(true); }
            else { ASP_0A12.SetChecked(false); }

            if (cpASP_0A13 === 'false') { ASP_0A13.SetChecked(false); }
            else if (cpASP_0A13 === 'true') { ASP_0A13.SetChecked(true); }
            else { ASP_0A13.SetChecked(false); }

            if (cpASP_0A14 === 'false') { ASP_0A14.SetChecked(false); }
            else if (cpASP_0A14 === 'true') { ASP_0A14.SetChecked(true); }
            else { ASP_0A14.SetChecked(false); }

            if (cpASP_0A15 === 'false') { ASP_0A15.SetChecked(false); }
            else if (cpASP_0A15 === 'true') { ASP_0A15.SetChecked(true); }
            else { ASP_0A15.SetChecked(false); }

            if (cpASP_0A16 === 'false') { ASP_0A16.SetChecked(false); }
            else if (cpASP_0A16 === 'true') { ASP_0A16.SetChecked(true); }
            else { ASP_0A16.SetChecked(false); }

            if (cpASP_0A17 === 'false') { ASP_0A17.SetChecked(false); }
            else if (cpASP_0A17 === 'true') { ASP_0A17.SetChecked(true); }
            else { ASP_0A17.SetChecked(false); }

            if (cpASP_0A18 === 'false') { ASP_0A18.SetChecked(false); }
            else if (cpASP_0A18 === 'true') { ASP_0A18.SetChecked(true); }
            else { ASP_0A18.SetChecked(false); }

            if (cpASP_0A19 === 'false') { ASP_0A19.SetChecked(false); }
            else if (cpASP_0A19 === 'true') { ASP_0A19.SetChecked(true); }
            else { ASP_0A19.SetChecked(false); }

            if (cpASP_0A20 === 'false') { ASP_0A20.SetChecked(false); }
            else if (cpASP_0A20 === 'true') { ASP_0A20.SetChecked(true); }
            else { ASP_0A20.SetChecked(false); }

            if (cpASP_0A21 === 'false') { ASP_0A21.SetChecked(false); }
            else if (cpASP_0A21 === 'true') { ASP_0A21.SetChecked(true); }
            else { ASP_0A21.SetChecked(false); }

            if (cpASP_0A22 === 'false') { ASP_0A22.SetChecked(false); }
            else if (cpASP_0A22 === 'true') { ASP_0A22.SetChecked(true); }
            else { ASP_0A22.SetChecked(false); }

            if (cpASP_0A23 === 'false') { ASP_0A23.SetChecked(false); }
            else if (cpASP_0A23 === 'true') { ASP_0A23.SetChecked(true); }
            else { ASP_0A23.SetChecked(false); }

            if (cpASP_0A24 === 'false') { ASP_0A24.SetChecked(false); }
            else if (cpASP_0A24 === 'true') { ASP_0A24.SetChecked(true); }
            else { ASP_0A24.SetChecked(false); }

            if (cpASP_0B01 === 'false') { ASP_0B01.SetChecked(false); }
            else if (cpASP_0B01 === 'true') { ASP_0B01.SetChecked(true); }
            else { ASP_0B01.SetChecked(false); }

            if (cpASP_0B02 === 'false') { ASP_0B02.SetChecked(false); }
            else if (cpASP_0B02 === 'true') { ASP_0B02.SetChecked(true); }
            else { ASP_0B02.SetChecked(false); }

            if (cpASP_0B03 === 'false') { ASP_0B03.SetChecked(false); }
            else if (cpASP_0B03 === 'true') { ASP_0B03.SetChecked(true); }
            else { ASP_0B03.SetChecked(false); }

            if (cpASP_0B04 === 'false') { ASP_0B04.SetChecked(false); }
            else if (cpASP_0B04 === 'true') { ASP_0B04.SetChecked(true); }
            else { ASP_0B04.SetChecked(false); }

            if (cpASP_0B05 === 'false') { ASP_0B05.SetChecked(false); }
            else if (cpASP_0B05 === 'true') { ASP_0B05.SetChecked(true); }
            else { ASP_0B05.SetChecked(false); }

            if (cpASP_0B06 === 'false') { ASP_0B06.SetChecked(false); }
            else if (cpASP_0B06 === 'true') { ASP_0B06.SetChecked(true); }
            else { ASP_0B06.SetChecked(false); }

            if (cpASP_0B07 === 'false') { ASP_0B07.SetChecked(false); }
            else if (cpASP_0B07 === 'true') { ASP_0B07.SetChecked(true); }
            else { ASP_0B07.SetChecked(false); }

            if (cpASP_0B08 === 'false') { ASP_0B08.SetChecked(false); }
            else if (cpASP_0B08 === 'true') { ASP_0B08.SetChecked(true); }
            else { ASP_0B08.SetChecked(false); }

            if (cpASP_0B09 === 'false') { ASP_0B09.SetChecked(false); }
            else if (cpASP_0B09 === 'true') { ASP_0B09.SetChecked(true); }
            else { ASP_0B09.SetChecked(false); }

            if (cpASP_0B10 === 'false') { ASP_0B10.SetChecked(false); }
            else if (cpASP_0B10 === 'true') { ASP_0B10.SetChecked(true); }
            else { ASP_0B10.SetChecked(false); }

            if (cpASP_0B11 === 'false') { ASP_0B11.SetChecked(false); }
            else if (cpASP_0B11 === 'true') { ASP_0B11.SetChecked(true); }
            else { ASP_0B11.SetChecked(false); }

            if (cpASP_0B12 === 'false') { ASP_0B12.SetChecked(false); }
            else if (cpASP_0B12 === 'true') { ASP_0B12.SetChecked(true); }
            else { ASP_0B12.SetChecked(false); }

            if (cpASP_0B13 === 'false') { ASP_0B13.SetChecked(false); }
            else if (cpASP_0B13 === 'true') { ASP_0B13.SetChecked(true); }
            else { ASP_0B13.SetChecked(false); }

            if (cpASP_0B14 === 'false') { ASP_0B14.SetChecked(false); }
            else if (cpASP_0B14 === 'true') { ASP_0B14.SetChecked(true); }
            else { ASP_0B14.SetChecked(false); }

            if (cpASP_0B15 === 'false') { ASP_0B15.SetChecked(false); }
            else if (cpASP_0B15 === 'true') { ASP_0B15.SetChecked(true); }
            else { ASP_0B15.SetChecked(false); }

            if (cpASP_0B16 === 'false') { ASP_0B16.SetChecked(false); }
            else if (cpASP_0B16 === 'true') { ASP_0B16.SetChecked(true); }
            else { ASP_0B16.SetChecked(false); }

            if (cpASP_0B17 === 'false') { ASP_0B17.SetChecked(false); }
            else if (cpASP_0B17 === 'true') { ASP_0B17.SetChecked(true); }
            else { ASP_0B17.SetChecked(false); }

            if (cpASP_0B18 === 'false') { ASP_0B18.SetChecked(false); }
            else if (cpASP_0B18 === 'true') { ASP_0B18.SetChecked(true); }
            else { ASP_0B18.SetChecked(false); }

            if (cpASP_0B19 === 'false') { ASP_0B19.SetChecked(false); }
            else if (cpASP_0B19 === 'true') { ASP_0B19.SetChecked(true); }
            else { ASP_0B19.SetChecked(false); }

            if (cpASP_0B20 === 'false') { ASP_0B20.SetChecked(false); }
            else if (cpASP_0B20 === 'true') { ASP_0B20.SetChecked(true); }
            else { ASP_0B20.SetChecked(false); }

            if (cpASP_0B21 === 'false') { ASP_0B21.SetChecked(false); }
            else if (cpASP_0B21 === 'true') { ASP_0B21.SetChecked(true); }
            else { ASP_0B21.SetChecked(false); }

            if (cpASP_0B22 === 'false') { ASP_0B22.SetChecked(false); }
            else if (cpASP_0B22 === 'true') { ASP_0B22.SetChecked(true); }
            else { ASP_0B22.SetChecked(false); }

            if (cpASP_0B23 === 'false') { ASP_0B23.SetChecked(false); }
            else if (cpASP_0B23 === 'true') { ASP_0B23.SetChecked(true); }
            else { ASP_0B23.SetChecked(false); }

            if (cpASP_0B24 === 'false') { ASP_0B24.SetChecked(false); }
            else if (cpASP_0B24 === 'true') { ASP_0B24.SetChecked(true); }
            else { ASP_0B24.SetChecked(false); }

            if (cpASP_0C01 === 'false') { ASP_0C01.SetChecked(false); }
            else if (cpASP_0C01 === 'true') { ASP_0C01.SetChecked(true); }
            else { ASP_0C01.SetChecked(false); }

            if (cpASP_0C02 === 'false') { ASP_0C02.SetChecked(false); }
            else if (cpASP_0C02 === 'true') { ASP_0C02.SetChecked(true); }
            else { ASP_0C02.SetChecked(false); }

            if (cpASP_0C03 === 'false') { ASP_0C03.SetChecked(false); }
            else if (cpASP_0C03 === 'true') { ASP_0C03.SetChecked(true); }
            else { ASP_0C03.SetChecked(false); }

            if (cpASP_0C04 === 'false') { ASP_0C04.SetChecked(false); }
            else if (cpASP_0C04 === 'true') { ASP_0C04.SetChecked(true); }
            else { ASP_0C04.SetChecked(false); }

            if (cpASP_0C05 === 'false') { ASP_0C05.SetChecked(false); }
            else if (cpASP_0C05 === 'true') { ASP_0C05.SetChecked(true); }
            else { ASP_0C05.SetChecked(false); }

            if (cpASP_0C06 === 'false') { ASP_0C06.SetChecked(false); }
            else if (cpASP_0C06 === 'true') { ASP_0C06.SetChecked(true); }
            else { ASP_0C06.SetChecked(false); }

            if (cpASP_0C07 === 'false') { ASP_0C07.SetChecked(false); }
            else if (cpASP_0C07 === 'true') { ASP_0C07.SetChecked(true); }
            else { ASP_0C07.SetChecked(false); }

            if (cpASP_0C08 === 'false') { ASP_0C08.SetChecked(false); }
            else if (cpASP_0C08 === 'true') { ASP_0C08.SetChecked(true); }
            else { ASP_0C08.SetChecked(false); }

            if (cpASP_0C09 === 'false') { ASP_0C09.SetChecked(false); }
            else if (cpASP_0C09 === 'true') { ASP_0C09.SetChecked(true); }
            else { ASP_0C09.SetChecked(false); }

            if (cpASP_0C10 === 'false') { ASP_0C10.SetChecked(false); }
            else if (cpASP_0C10 === 'true') { ASP_0C10.SetChecked(true); }
            else { ASP_0C10.SetChecked(false); }

            if (cpASP_0C11 === 'false') { ASP_0C11.SetChecked(false); }
            else if (cpASP_0C11 === 'true') { ASP_0C11.SetChecked(true); }
            else { ASP_0C11.SetChecked(false); }

            if (cpASP_0C12 === 'false') { ASP_0C12.SetChecked(false); }
            else if (cpASP_0C12 === 'true') { ASP_0C12.SetChecked(true); }
            else { ASP_0C12.SetChecked(false); }

            if (cpASP_0C13 === 'false') { ASP_0C13.SetChecked(false); }
            else if (cpASP_0C13 === 'true') { ASP_0C13.SetChecked(true); }
            else { ASP_0C13.SetChecked(false); }

            if (cpASP_0C14 === 'false') { ASP_0C14.SetChecked(false); }
            else if (cpASP_0C14 === 'true') { ASP_0C14.SetChecked(true); }
            else { ASP_0C14.SetChecked(false); }

            if (cpASP_0C15 === 'false') { ASP_0C15.SetChecked(false); }
            else if (cpASP_0C15 === 'true') { ASP_0C15.SetChecked(true); }
            else { ASP_0C15.SetChecked(false); }

            if (cpASP_0C16 === 'false') { ASP_0C16.SetChecked(false); }
            else if (cpASP_0C16 === 'true') { ASP_0C16.SetChecked(true); }
            else { ASP_0C16.SetChecked(false); }

            if (cpASP_0C17 === 'false') { ASP_0C17.SetChecked(false); }
            else if (cpASP_0C17 === 'true') { ASP_0C17.SetChecked(true); }
            else { ASP_0C17.SetChecked(false); }

            if (cpASP_0C18 === 'false') { ASP_0C18.SetChecked(false); }
            else if (cpASP_0C18 === 'true') { ASP_0C18.SetChecked(true); }
            else { ASP_0C18.SetChecked(false); }

            if (cpASP_0C19 === 'false') { ASP_0C19.SetChecked(false); }
            else if (cpASP_0C19 === 'true') { ASP_0C19.SetChecked(true); }
            else { ASP_0C19.SetChecked(false); }

            if (cpASP_0C20 === 'false') { ASP_0C20.SetChecked(false); }
            else if (cpASP_0C20 === 'true') { ASP_0C20.SetChecked(true); }
            else { ASP_0C20.SetChecked(false); }

            if (cpASP_0C21 === 'false') { ASP_0C21.SetChecked(false); }
            else if (cpASP_0C21 === 'true') { ASP_0C21.SetChecked(true); }
            else { ASP_0C21.SetChecked(false); }

            if (cpASP_1A01 === 'false') { ASP_1A01.SetChecked(false); }
            else if (cpASP_1A01 === 'true') { ASP_1A01.SetChecked(true); }
            else { ASP_1A01.SetChecked(false); }

            if (cpASP_1A02 === 'false') { ASP_1A02.SetChecked(false); }
            else if (cpASP_1A02 === 'true') { ASP_1A02.SetChecked(true); }
            else { ASP_1A02.SetChecked(false); }

            if (cpASP_1A03 === 'false') { ASP_1A03.SetChecked(false); }
            else if (cpASP_1A03 === 'true') { ASP_1A03.SetChecked(true); }
            else { ASP_1A03.SetChecked(false); }

            if (cpASP_1A04 === 'false') { ASP_1A04.SetChecked(false); }
            else if (cpASP_1A04 === 'true') { ASP_1A04.SetChecked(true); }
            else { ASP_1A04.SetChecked(false); }

            if (cpASP_1A05 === 'false') { ASP_1A05.SetChecked(false); }
            else if (cpASP_1A05 === 'true') { ASP_1A05.SetChecked(true); }
            else { ASP_1A05.SetChecked(false); }

            if (cpASP_1A06 === 'false') { ASP_1A06.SetChecked(false); }
            else if (cpASP_1A06 === 'true') { ASP_1A06.SetChecked(true); }
            else { ASP_1A06.SetChecked(false); }

            if (cpASP_1A07 === 'false') { ASP_1A07.SetChecked(false); }
            else if (cpASP_1A07 === 'true') { ASP_1A07.SetChecked(true); }
            else { ASP_1A07.SetChecked(false); }

            if (cpASP_1A08 === 'false') { ASP_1A08.SetChecked(false); }
            else if (cpASP_1A08 === 'true') { ASP_1A08.SetChecked(true); }
            else { ASP_1A08.SetChecked(false); }

            if (cpASP_1A09 === 'false') { ASP_1A09.SetChecked(false); }
            else if (cpASP_1A09 === 'true') { ASP_1A09.SetChecked(true); }
            else { ASP_1A09.SetChecked(false); }

            if (cpASP_1A10 === 'false') { ASP_1A10.SetChecked(false); }
            else if (cpASP_1A10 === 'true') { ASP_1A10.SetChecked(true); }
            else { ASP_1A10.SetChecked(false); }

            if (cpASP_1A11 === 'false') { ASP_1A11.SetChecked(false); }
            else if (cpASP_1A11 === 'true') { ASP_1A11.SetChecked(true); }
            else { ASP_1A11.SetChecked(false); }

            if (cpASP_1A12 === 'false') { ASP_1A12.SetChecked(false); }
            else if (cpASP_1A12 === 'true') { ASP_1A12.SetChecked(true); }
            else { ASP_1A12.SetChecked(false); }

            if (cpASP_1A13 === 'false') { ASP_1A13.SetChecked(false); }
            else if (cpASP_1A13 === 'true') { ASP_1A13.SetChecked(true); }
            else { ASP_1A13.SetChecked(false); }

            if (cpASP_1A14 === 'false') { ASP_1A14.SetChecked(false); }
            else if (cpASP_1A14 === 'true') { ASP_1A14.SetChecked(true); }
            else { ASP_1A14.SetChecked(false); }

            if (cpASP_1A15 === 'false') { ASP_1A15.SetChecked(false); }
            else if (cpASP_1A15 === 'true') { ASP_1A15.SetChecked(true); }
            else { ASP_1A15.SetChecked(false); }

            if (cpASP_1A16 === 'false') { ASP_1A16.SetChecked(false); }
            else if (cpASP_1A16 === 'true') { ASP_1A16.SetChecked(true); }
            else { ASP_1A16.SetChecked(false); }

            if (cpASP_1A17 === 'false') { ASP_1A17.SetChecked(false); }
            else if (cpASP_1A17 === 'true') { ASP_1A17.SetChecked(true); }
            else { ASP_1A17.SetChecked(false); }

            if (cpASP_1A18 === 'false') { ASP_1A18.SetChecked(false); }
            else if (cpASP_1A18 === 'true') { ASP_1A18.SetChecked(true); }
            else { ASP_1A18.SetChecked(false); }

            if (cpASP_1A19 === 'false') { ASP_1A19.SetChecked(false); }
            else if (cpASP_1A19 === 'true') { ASP_1A19.SetChecked(true); }
            else { ASP_1A19.SetChecked(false); }

            if (cpASP_1A20 === 'false') { ASP_1A20.SetChecked(false); }
            else if (cpASP_1A20 === 'true') { ASP_1A20.SetChecked(true); }
            else { ASP_1A20.SetChecked(false); }

            if (cpASP_1A21 === 'false') { ASP_1A21.SetChecked(false); }
            else if (cpASP_1A21 === 'true') { ASP_1A21.SetChecked(true); }
            else { ASP_1A21.SetChecked(false); }

            if (cpASP_1A22 === 'false') { ASP_1A22.SetChecked(false); }
            else if (cpASP_1A22 === 'true') { ASP_1A22.SetChecked(true); }
            else { ASP_1A22.SetChecked(false); }

            if (cpASP_1A23 === 'false') { ASP_1A23.SetChecked(false); }
            else if (cpASP_1A23 === 'true') { ASP_1A23.SetChecked(true); }
            else { ASP_1A23.SetChecked(false); }

            if (cpASP_1A24 === 'false') { ASP_1A24.SetChecked(false); }
            else if (cpASP_1A24 === 'true') { ASP_1A24.SetChecked(true); }
            else { ASP_1A24.SetChecked(false); }

            if (cpASP_1A25 === 'false') { ASP_1A25.SetChecked(false); }
            else if (cpASP_1A25 === 'true') { ASP_1A25.SetChecked(true); }
            else { ASP_1A25.SetChecked(false); }

            if (cpASP_1B01 === 'false') { ASP_1B01.SetChecked(false); }
            else if (cpASP_1B01 === 'true') { ASP_1B01.SetChecked(true); }
            else { ASP_1B01.SetChecked(false); }

            if (cpASP_1B02 === 'false') { ASP_1B02.SetChecked(false); }
            else if (cpASP_1B02 === 'true') { ASP_1B02.SetChecked(true); }
            else { ASP_1B02.SetChecked(false); }

            if (cpASP_1B03 === 'false') { ASP_1B03.SetChecked(false); }
            else if (cpASP_1B03 === 'true') { ASP_1B03.SetChecked(true); }
            else { ASP_1B03.SetChecked(false); }

            if (cpASP_1B04 === 'false') { ASP_1B04.SetChecked(false); }
            else if (cpASP_1B04 === 'true') { ASP_1B04.SetChecked(true); }
            else { ASP_1B04.SetChecked(false); }

            if (cpASP_1B05 === 'false') { ASP_1B05.SetChecked(false); }
            else if (cpASP_1B05 === 'true') { ASP_1B05.SetChecked(true); }
            else { ASP_1B05.SetChecked(false); }

            if (cpASP_1B06 === 'false') { ASP_1B06.SetChecked(false); }
            else if (cpASP_1B06 === 'true') { ASP_1B06.SetChecked(true); }
            else { ASP_1B06.SetChecked(false); }

            if (cpASP_1B07 === 'false') { ASP_1B07.SetChecked(false); }
            else if (cpASP_1B07 === 'true') { ASP_1B07.SetChecked(true); }
            else { ASP_1B07.SetChecked(false); }

            if (cpASP_1B08 === 'false') { ASP_1B08.SetChecked(false); }
            else if (cpASP_1B08 === 'true') { ASP_1B08.SetChecked(true); }
            else { ASP_1B08.SetChecked(false); }

            if (cpASP_1B09 === 'false') { ASP_1B09.SetChecked(false); }
            else if (cpASP_1B09 === 'true') { ASP_1B09.SetChecked(true); }
            else { ASP_1B09.SetChecked(false); }

            if (cpASP_1B10 === 'false') { ASP_1B10.SetChecked(false); }
            else if (cpASP_1B10 === 'true') { ASP_1B10.SetChecked(true); }
            else { ASP_1B10.SetChecked(false); }

            if (cpASP_1B11 === 'false') { ASP_1B11.SetChecked(false); }
            else if (cpASP_1B11 === 'true') { ASP_1B11.SetChecked(true); }
            else { ASP_1B11.SetChecked(false); }

            if (cpASP_1B12 === 'false') { ASP_1B12.SetChecked(false); }
            else if (cpASP_1B12 === 'true') { ASP_1B12.SetChecked(true); }
            else { ASP_1B12.SetChecked(false); }

            if (cpASP_1B13 === 'false') { ASP_1B13.SetChecked(false); }
            else if (cpASP_1B13 === 'true') { ASP_1B13.SetChecked(true); }
            else { ASP_1B13.SetChecked(false); }

            if (cpASP_1B14 === 'false') { ASP_1B14.SetChecked(false); }
            else if (cpASP_1B14 === 'true') { ASP_1B14.SetChecked(true); }
            else { ASP_1B14.SetChecked(false); }

            if (cpASP_1B15 === 'false') { ASP_1B15.SetChecked(false); }
            else if (cpASP_1B15 === 'true') { ASP_1B15.SetChecked(true); }
            else { ASP_1B15.SetChecked(false); }

            if (cpASP_1B16 === 'false') { ASP_1B16.SetChecked(false); }
            else if (cpASP_1B16 === 'true') { ASP_1B16.SetChecked(true); }
            else { ASP_1B16.SetChecked(false); }

            if (cpASP_1B17 === 'false') { ASP_1B17.SetChecked(false); }
            else if (cpASP_1B17 === 'true') { ASP_1B17.SetChecked(true); }
            else { ASP_1B17.SetChecked(false); }

            if (cpASP_1B18 === 'false') { ASP_1B18.SetChecked(false); }
            else if (cpASP_1B18 === 'true') { ASP_1B18.SetChecked(true); }
            else { ASP_1B18.SetChecked(false); }

            if (cpASP_1B19 === 'false') { ASP_1B19.SetChecked(false); }
            else if (cpASP_1B19 === 'true') { ASP_1B19.SetChecked(true); }
            else { ASP_1B19.SetChecked(false); }

            if (cpASP_1B20 === 'false') { ASP_1B20.SetChecked(false); }
            else if (cpASP_1B20 === 'true') { ASP_1B20.SetChecked(true); }
            else { ASP_1B20.SetChecked(false); }

            if (cpASP_1B21 === 'false') { ASP_1B21.SetChecked(false); }
            else if (cpASP_1B21 === 'true') { ASP_1B21.SetChecked(true); }
            else { ASP_1B21.SetChecked(false); }

            if (cpASP_1B22 === 'false') { ASP_1B22.SetChecked(false); }
            else if (cpASP_1B22 === 'true') { ASP_1B22.SetChecked(true); }
            else { ASP_1B22.SetChecked(false); }

            if (cpASP_1B23 === 'false') { ASP_1B23.SetChecked(false); }
            else if (cpASP_1B23 === 'true') { ASP_1B23.SetChecked(true); }
            else { ASP_1B23.SetChecked(false); }

            if (cpASP_1B24 === 'false') { ASP_1B24.SetChecked(false); }
            else if (cpASP_1B24 === 'true') { ASP_1B24.SetChecked(true); }
            else { ASP_1B24.SetChecked(false); }

            if (cpASP_1C01 === 'false') { ASP_1C01.SetChecked(false); }
            else if (cpASP_1C01 === 'true') { ASP_1C01.SetChecked(true); }
            else { ASP_1C01.SetChecked(false); }

            if (cpASP_1C02 === 'false') { ASP_1C02.SetChecked(false); }
            else if (cpASP_1C02 === 'true') { ASP_1C02.SetChecked(true); }
            else { ASP_1C02.SetChecked(false); }

            if (cpASP_1C03 === 'false') { ASP_1C03.SetChecked(false); }
            else if (cpASP_1C03 === 'true') { ASP_1C03.SetChecked(true); }
            else { ASP_1C03.SetChecked(false); }

            if (cpASP_1C04 === 'false') { ASP_1C04.SetChecked(false); }
            else if (cpASP_1C04 === 'true') { ASP_1C04.SetChecked(true); }
            else { ASP_1C04.SetChecked(false); }

            if (cpASP_1C05 === 'false') { ASP_1C05.SetChecked(false); }
            else if (cpASP_1C05 === 'true') { ASP_1C05.SetChecked(true); }
            else { ASP_1C05.SetChecked(false); }

            if (cpASP_1C06 === 'false') { ASP_1C06.SetChecked(false); }
            else if (cpASP_1C06 === 'true') { ASP_1C06.SetChecked(true); }
            else { ASP_1C06.SetChecked(false); }

            if (cpASP_1C07 === 'false') { ASP_1C07.SetChecked(false); }
            else if (cpASP_1C07 === 'true') { ASP_1C07.SetChecked(true); }
            else { ASP_1C07.SetChecked(false); }

            if (cpASP_1C08 === 'false') { ASP_1C08.SetChecked(false); }
            else if (cpASP_1C08 === 'true') { ASP_1C08.SetChecked(true); }
            else { ASP_1C08.SetChecked(false); }

            if (cpASP_1C09 === 'false') { ASP_1C09.SetChecked(false); }
            else if (cpASP_1C09 === 'true') { ASP_1C09.SetChecked(true); }
            else { ASP_1C09.SetChecked(false); }

            if (cpASP_1C10 === 'false') { ASP_1C10.SetChecked(false); }
            else if (cpASP_1C10 === 'true') { ASP_1C10.SetChecked(true); }
            else { ASP_1C10.SetChecked(false); }

            if (cpASP_1C11 === 'false') { ASP_1C11.SetChecked(false); }
            else if (cpASP_1C11 === 'true') { ASP_1C11.SetChecked(true); }
            else { ASP_1C11.SetChecked(false); }

            if (cpASP_1C12 === 'false') { ASP_1C12.SetChecked(false); }
            else if (cpASP_1C12 === 'true') { ASP_1C12.SetChecked(true); }
            else { ASP_1C12.SetChecked(false); }

            if (cpASP_1C13 === 'false') { ASP_1C13.SetChecked(false); }
            else if (cpASP_1C13 === 'true') { ASP_1C13.SetChecked(true); }
            else { ASP_1C13.SetChecked(false); }

            if (cpASP_1C14 === 'false') { ASP_1C14.SetChecked(false); }
            else if (cpASP_1C14 === 'true') { ASP_1C14.SetChecked(true); }
            else { ASP_1C14.SetChecked(false); }

            if (cpASP_1C15 === 'false') { ASP_1C15.SetChecked(false); }
            else if (cpASP_1C15 === 'true') { ASP_1C15.SetChecked(true); }
            else { ASP_1C15.SetChecked(false); }

            if (cpASP_1C16 === 'false') { ASP_1C16.SetChecked(false); }
            else if (cpASP_1C16 === 'true') { ASP_1C16.SetChecked(true); }
            else { ASP_1C16.SetChecked(false); }

            if (cpASP_1C17 === 'false') { ASP_1C17.SetChecked(false); }
            else if (cpASP_1C17 === 'true') { ASP_1C17.SetChecked(true); }
            else { ASP_1C17.SetChecked(false); }

            if (cpASP_1C18 === 'false') { ASP_1C18.SetChecked(false); }
            else if (cpASP_1C18 === 'true') { ASP_1C18.SetChecked(true); }
            else { ASP_1C18.SetChecked(false); }

            if (cpASP_1C19 === 'false') { ASP_1C19.SetChecked(false); }
            else if (cpASP_1C19 === 'true') { ASP_1C19.SetChecked(true); }
            else { ASP_1C19.SetChecked(false); }

            if (cpASP_1C20 === 'false') { ASP_1C20.SetChecked(false); }
            else if (cpASP_1C20 === 'true') { ASP_1C20.SetChecked(true); }
            else { ASP_1C20.SetChecked(false); }

            if (cpASP_1C21 === 'false') { ASP_1C21.SetChecked(false); }
            else if (cpASP_1C21 === 'true') { ASP_1C21.SetChecked(true); }
            else { ASP_1C21.SetChecked(false); }
        }

        function cbCallback(s, e) {

            cbMain.PerformCallback();
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterPageBody" runat="Server">
    <div style="width: 1180px">
        <table>

            <tr>
                <td>
                    <dx:ASPxLabel runat="server" ID="ASPxLabelComboBox" Text="Wybierz Sektor"></dx:ASPxLabel>
                </td>
            </tr>
            <tr>
                <td style="padding-top: 2px">
                    <dx:ASPxComboBox runat="server" ID="ASPxComboBox_Sektor" AutoPostBack="false" SelectedIndex="0" Font-Size="Larger" BackColor="LightGreen">
                        <ClientSideEvents ValueChanged="cbCallback" />
                        <Items>
                            <dx:ListEditItem Value="ALL" Text="WSZYSTKIE" />
                            <dx:ListEditItem Value="0A" Text="0A" />
                            <dx:ListEditItem Value="0B" Text="0B" />
                            <dx:ListEditItem Value="0C" Text="0C" />
                            <dx:ListEditItem Value="1A" Text="1A" />
                            <dx:ListEditItem Value="1B" Text="1B" />
                            <dx:ListEditItem Value="1C" Text="1C" />
                        </Items>
                    </dx:ASPxComboBox>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td style="vertical-align: top;">
                    <dx:ASPxPageControl runat="server" ID="ASPxPageControl" ActiveTabIndex="0">
                        <TabPages>
                            <dx:TabPage Text="Miejsca Parkingowe">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxGridView runat="server" ID="ASPxGridParkingowy" DataSourceID="SQLxGridParkingowy" Width="600px" KeyFieldName="Miejsce_Id" ClientInstanceName="ASPxGridParkingowy" ClientIDMode="Static"
                                            OnStartRowEditing="ASPxGridParkingowy_StartRowEditing" StylesEditors-ReadOnly-BackColor="Gray"  SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false">
                                            <SettingsDetail ShowDetailRow="true" />
                                            <SettingsPager>
                                                <PageSizeItemSettings Visible="true"></PageSizeItemSettings>
                                            </SettingsPager>
                                            <Settings ShowFilterRow="true" ShowFilterBar="Visible" />
                                            <FormatConditions>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_StatusBaterii" Format="Custom" Expression="Miejsce_StatusBaterii >= '2.0'">
                                                    <CellStyle BackColor="Green" ForeColor="White"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_StatusBaterii" Format="Custom" Expression="Miejsce_StatusBaterii < '2.0'">
                                                    <CellStyle BackColor="Yellow" ForeColor="Black"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_StatusBaterii" Format="Custom" Expression="Miejsce_StatusBaterii <= '1.0'">
                                                    <CellStyle BackColor="Red" ForeColor="Black"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>

                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_CzyZajete" Format="Custom" Expression="Miejsce_CzyZajete = 1">
                                                    <CellStyle BackColor="Gray" ForeColor="Black"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_CzyZajete" Format="Custom" Expression="Miejsce_CzyZajete = 0">
                                                    <CellStyle BackColor="LightGreen" ForeColor="Black"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_CzyZajete" Format="Custom" Expression="Miejsce_CzyZajete = 2">
                                                    <CellStyle BackColor="DarkRed" ForeColor="Black"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                            </FormatConditions>
                                            <Columns>
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_Id" Caption="Miejsce parkingowe">
                                                    <EditFormSettings Visible="True" VisibleIndex="0" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataCheckColumn FieldName="Miejsce_CzyZajete" Caption="Czy zajęte?" Width="40px">
                                                    <PropertiesCheckEdit DisplayTextChecked="Tak" DisplayTextUnchecked="Nie"></PropertiesCheckEdit>
                                                    <EditFormSettings Visible="True" VisibleIndex="5" />
                                                </dx:GridViewDataCheckColumn>
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_StatusBaterii" Caption="Napięcie baterii" Width="100px">
                                                    <EditFormSettings Visible="True" VisibleIndex="1" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_UIDCzujnika" Caption="UID" Visible="false">
                                                    <EditFormSettings Visible="True" VisibleIndex="2" ColumnSpan="2" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_KoordynatyX" Caption="Koordynaty X" Visible="false">
                                                    <EditFormSettings Visible="True" VisibleIndex="3" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_KoordynatyY" Caption="Koordynaty Y" Visible="false">
                                                    <EditFormSettings Visible="True" VisibleIndex="4" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" Width="20px" ButtonRenderMode="Secondary"></dx:GridViewCommandColumn>
                                            </Columns>
                                            <SettingsCommandButton>
                                                <NewButton Text="+" Styles-Style-ForeColor="LightGreen" Styles-Style-Font-Bold="true" Styles-Style-Font-Size="Large">
                                                </NewButton>
                                                <EditButton Text="e" Styles-Style-ForeColor="LightBlue" Styles-Style-Font-Bold="true" Styles-Style-Font-Size="Large">
                                                </EditButton>
                                                <UpdateButton Text="Zapisz" Styles-Style-ForeColor="LightGreen" Styles-Style-Font-Bold="true">
                                                </UpdateButton>
                                                <CancelButton Text="Anuluj" Styles-Style-ForeColor="Red" Styles-Style-Font-Bold="true">
                                                </CancelButton>
                                            </SettingsCommandButton>

                                            <Templates>
                                                <DetailRow>
                                                    <dx:ASPxGridView runat="server" ID="ASPxGridDetale" DataSourceID="SQLxGridDetale" OnBeforePerformDataSelect="ASPxGridDetale_BeforePerformDataSelect"
                                                        ClientInstanceName="ASPxGridDetale" ClientIDMode="Static">
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn FieldName="Miejsce_UIDCzujnika" Caption="UID Czujnika"></dx:GridViewDataTextColumn>
                                                            <dx:GridViewBandColumn Caption="Koordynaty">
                                                                <Columns>
                                                                    <dx:GridViewDataTextColumn FieldName="Miejsce_KoordynatyX" Caption="X"></dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="Miejsce_KoordynatyY" Caption="Y"></dx:GridViewDataTextColumn>
                                                                </Columns>
                                                            </dx:GridViewBandColumn>
                                                        </Columns>
                                                    </dx:ASPxGridView>
                                                    <asp:SqlDataSource runat="server" ID="SQLxGridDetale" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                                                        SelectCommand="SELECT Miejsce_KoordynatyX, Miejsce_KoordynatyY, Miejsce_UIDCzujnika FROM Miejsca_Parkingowe WHERE Miejsce_Id = @Miejsce_Id">
                                                        <SelectParameters>
                                                            <asp:SessionParameter Name="Miejsce_Id" SessionField="Miejsce_Id" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </DetailRow>
                                            </Templates>
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Log zajętości miejsc">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxGridView runat="server" ID="ASPxGridParkStats" DataSourceID="SQLxGridParkStats" Width="600px" KeyFieldName="Stat_Id"
                                            ClientInstanceName="ASPxGridParkStats" ClientIDMode="Static"  SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false">
                                            <Settings ShowGroupButtons="true" ShowGroupPanel="true" ShowGroupedColumns="false" />
                                            <GroupSummary>
                                                <dx:ASPxSummaryItem ShowInColumn="Stat_MiejsceNowyStatus" FieldName="Stat_MiejsceNowyStatus" SummaryType="Count" DisplayFormat="Ile razy zajęte/zwolnione: {0}" />
                                            </GroupSummary>
                                            <Columns>
                                                <dx:GridViewDataTextColumn FieldName="Stat_Id" Visible="false"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Stat_MiejsceId" Width="120px" Caption="Miejsce Parkingowe"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataDateColumn FieldName="Stat_MiejsceData" Caption="Data Wpisu" Width="100px">
                                                    <PropertiesDateEdit DisplayFormatString="G"></PropertiesDateEdit>
                                                </dx:GridViewDataDateColumn>
                                                <dx:GridViewDataTextColumn FieldName="Stat_MiejsceNowyStatus" Caption="Nowy Status" Width="40px"></dx:GridViewDataTextColumn>
                                            </Columns>
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Beacony">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxGridView runat="server" ID="ASPxGridBeacony" DataSourceID="SQLxGridBeacony" Width="600px" KeyFieldName="Beacon_Id"  SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false"
                                            OnStartRowEditing="ASPxGridBeacony_StartRowEditing" StylesEditors-ReadOnly-BackColor="Gray" ClientInstanceName="ASPxGridBeacony" ClientIDMode="Static">
                                            <SettingsEditing EditFormColumnCount="3"></SettingsEditing>
                                            <Columns>
                                                <dx:GridViewDataTextColumn FieldName="Beacon_Id" Caption="Id" Width="70px">
                                                    <EditFormSettings VisibleIndex="0" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Beacon_UId" Caption="UId">
                                                    <EditFormSettings VisibleIndex="2" ColumnSpan="3" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Beacon_PietroSektor" Caption="Piętro i Sektor" Width="40px">
                                                    <EditFormSettings Visible="True" VisibleIndex="3" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewBandColumn Caption="Koordynaty">
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="Beacon_KoordynatyX" Caption="X" Width="50px">
                                                            <EditFormSettings Caption="Koordynaty X" VisibleIndex="1" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Beacon_KoordynatyY" Caption="Y" Width="50px">
                                                            <EditFormSettings Caption="Koordynaty Y" VisibleIndex="1" />
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                </dx:GridViewBandColumn>
                                                <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" Width="10px" ButtonRenderMode="Secondary"></dx:GridViewCommandColumn>
                                            </Columns>
                                            <SettingsCommandButton>
                                                <NewButton Text="+" Styles-Style-ForeColor="LightGreen" Styles-Style-Font-Bold="true" Styles-Style-Font-Size="Large">
                                                </NewButton>
                                                <EditButton Text="e" Styles-Style-ForeColor="LightBlue" Styles-Style-Font-Bold="true" Styles-Style-Font-Size="Large">
                                                </EditButton>
                                                <UpdateButton Text="Zapisz" Styles-Style-ForeColor="LightGreen" Styles-Style-Font-Bold="true">
                                                </UpdateButton>
                                                <CancelButton Text="Anuluj" Styles-Style-ForeColor="Red" Styles-Style-Font-Bold="true">
                                                </CancelButton>
                                            </SettingsCommandButton>
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
                </td>
                <td style="padding-left: 3px; vertical-align: top;">
                    <dx:ASPxVerticalGrid runat="server" ID="ASPxGridALL" DataSourceID="SQLxGridALL" Width="240px" ClientInstanceName="ASPxGridALL" ClientIDMode="Static"  SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false">
                        <Rows>
                            <dx:VerticalGridCategoryRow Caption="Miejsca wolne:">
                                <Rows>
                                    <dx:VerticalGridTextRow FieldName="Miejsce_Wolne" Caption="Wolne"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_0A" Caption="0A"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_0B" Caption="0B"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_0C" Caption="0C"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_1A" Caption="1A"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_1B" Caption="1B"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_1C" Caption="1C"></dx:VerticalGridTextRow>
                                </Rows>
                            </dx:VerticalGridCategoryRow>
                        </Rows>
                    </dx:ASPxVerticalGrid>
                    <asp:SqlDataSource runat="server" ID="SQLxGridALL" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                        SelectCommand="dbs_Parkingowy_DaneMiejsc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td>
                <td style="padding-left: 3px; vertical-align: top;">
                    <dx:ASPxVerticalGrid runat="server" ID="ASPxGridALLZajete" DataSourceID="SQLxGridALLZajete" Width="240px" ClientInstanceName="ASPxGridALLZajete" ClientIDMode="Static"  SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false">
                        <Rows>
                            <dx:VerticalGridCategoryRow Caption="Miejsca zajęte:">
                                <Rows>
                                    <dx:VerticalGridTextRow FieldName="Miejsce_Zajete" Caption="W sumie:"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_0A" Caption="0A"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_0B" Caption="0B"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_0C" Caption="0C"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_1A" Caption="1A"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_1B" Caption="1B"></dx:VerticalGridTextRow>
                                    <dx:VerticalGridTextRow FieldName="Sektor_1C" Caption="1C"></dx:VerticalGridTextRow>
                                </Rows>
                            </dx:VerticalGridCategoryRow>
                        </Rows>
                    </dx:ASPxVerticalGrid>
                    <asp:SqlDataSource runat="server" ID="SQLxGridALLZajete" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                        SelectCommand="dbs_Parkingowy_DaneMiejscZajetych" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div style="width: 1180px; padding-top: 20px;">
            <table>
                <tr>
                    <td>
                        <dx:ASPxPageControl runat="server" ID="ASPxPageControl1" ActiveTabIndex="0">
                            <TabPages>
                                <dx:TabPage Text="Parter">
                                    <ContentCollection>
                                        <dx:ContentControl>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxImage runat="server" ImageUrl="~/PlanParkingu/parter.png" Height="740px">
                                                        </dx:ASPxImage>
                                                        <table style="bottom: 62px; left: 31px; position: relative;">
                                                            <tr>
                                                                <td style="width: 56px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A15" ClientEnabled="false" ClientInstanceName="ASP_0A15"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 50px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A14" ClientEnabled="false" ClientInstanceName="ASP_0A14"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A13" ClientEnabled="false" ClientInstanceName="ASP_0A13"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A12" ClientEnabled="false" ClientInstanceName="ASP_0A12"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A11" ClientEnabled="false" ClientInstanceName="ASP_0A11"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A10" ClientEnabled="false" ClientInstanceName="ASP_0A10"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A09" ClientEnabled="false" ClientInstanceName="ASP_0A09"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A08" ClientEnabled="false" ClientInstanceName="ASP_0A08"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A07" ClientEnabled="false" ClientInstanceName="ASP_0A07"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 45px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A06" ClientEnabled="false" ClientInstanceName="ASP_0A06"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 46px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A05" ClientEnabled="false" ClientInstanceName="ASP_0A05"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 45px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A04" ClientEnabled="false" ClientInstanceName="ASP_0A04"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A03" ClientEnabled="false" ClientInstanceName="ASP_0A03"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A02" ClientEnabled="false" ClientInstanceName="ASP_0A02"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A01" ClientEnabled="false" ClientInstanceName="ASP_0A01"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 62px; bottom: 240px">
                                                            <tr>
                                                                <td style="width: 48px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A16" ClientEnabled="false" ClientInstanceName="ASP_0A16"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 47px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A17" ClientEnabled="false" ClientInstanceName="ASP_0A17"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A18" ClientEnabled="false" ClientInstanceName="ASP_0A18"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 191px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A19" ClientEnabled="false" ClientInstanceName="ASP_0A19"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A20" ClientEnabled="false" ClientInstanceName="ASP_0A20"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A21" ClientEnabled="false" ClientInstanceName="ASP_0A21"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 132px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A22" ClientEnabled="false" ClientInstanceName="ASP_0A22"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 46px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A23" ClientEnabled="false" ClientInstanceName="ASP_0A23"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0A24" ClientEnabled="false" ClientInstanceName="ASP_0A24"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 24px; bottom: 350px">
                                                            <tr>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B13" ClientEnabled="false" ClientInstanceName="ASP_0B13"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 72px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B12" ClientEnabled="false" ClientInstanceName="ASP_0B12"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B11" ClientEnabled="false" ClientInstanceName="ASP_0B11"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B10" ClientEnabled="false" ClientInstanceName="ASP_0B10"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B09" ClientEnabled="false" ClientInstanceName="ASP_0B09"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 128px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B08" ClientEnabled="false" ClientInstanceName="ASP_0B08"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B07" ClientEnabled="false" ClientInstanceName="ASP_0B07"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B06" ClientEnabled="false" ClientInstanceName="ASP_0B06"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B05" ClientEnabled="false" ClientInstanceName="ASP_0B05"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B04" ClientEnabled="false" ClientInstanceName="ASP_0B04"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B03" ClientEnabled="false" ClientInstanceName="ASP_0B03"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B02" ClientEnabled="false" ClientInstanceName="ASP_0B02"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B01" ClientEnabled="false" ClientInstanceName="ASP_0B01"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 46px; bottom: 525px">
                                                            <tr>
                                                                <td style="width: 48px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B14" ClientEnabled="false" ClientInstanceName="ASP_0B14"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B15" ClientEnabled="false" ClientInstanceName="ASP_0B15"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B16" ClientEnabled="false" ClientInstanceName="ASP_0B16"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B17" ClientEnabled="false" ClientInstanceName="ASP_0B17"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B18" ClientEnabled="false" ClientInstanceName="ASP_0B18"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B19" ClientEnabled="false" ClientInstanceName="ASP_0B19"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B20" ClientEnabled="false" ClientInstanceName="ASP_0B20"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B21" ClientEnabled="false" ClientInstanceName="ASP_0B21"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 210px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B22" ClientEnabled="false" ClientInstanceName="ASP_0B22"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 48px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B23" ClientEnabled="false" ClientInstanceName="ASP_0B23"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0B24" ClientEnabled="false" ClientInstanceName="ASP_0B24"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 46px; bottom: 635px">
                                                            <tr>
                                                                <td style="width: 48px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C09" ClientEnabled="false" ClientInstanceName="ASP_0C09"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C08" ClientEnabled="false" ClientInstanceName="ASP_0C08"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C07" ClientEnabled="false" ClientInstanceName="ASP_0C07"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C06" ClientEnabled="false" ClientInstanceName="ASP_0C06"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C05" ClientEnabled="false" ClientInstanceName="ASP_0C05"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C04" ClientEnabled="false" ClientInstanceName="ASP_0C04"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C03" ClientEnabled="false" ClientInstanceName="ASP_0C03"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C02" ClientEnabled="false" ClientInstanceName="ASP_0C02"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C01" ClientEnabled="false" ClientInstanceName="ASP_0C01"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 24px; bottom: 810px">
                                                            <tr>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C10" ClientEnabled="false" ClientInstanceName="ASP_0C10"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C11" ClientEnabled="false" ClientInstanceName="ASP_0C11"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C12" ClientEnabled="false" ClientInstanceName="ASP_0C12"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C13" ClientEnabled="false" ClientInstanceName="ASP_0C13"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C14" ClientEnabled="false" ClientInstanceName="ASP_0C14"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C15" ClientEnabled="false" ClientInstanceName="ASP_0C15"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C16" ClientEnabled="false" ClientInstanceName="ASP_0C16"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C17" ClientEnabled="false" ClientInstanceName="ASP_0C17"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C18" ClientEnabled="false" ClientInstanceName="ASP_0C18"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C19" ClientEnabled="false" ClientInstanceName="ASP_0C19"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C20" ClientEnabled="false" ClientInstanceName="ASP_0C20"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_0C21" ClientEnabled="false" ClientInstanceName="ASP_0C21"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="vertical-align: top;">
                                                        <dx:ASPxVerticalGrid runat="server" ID="ASPxEkranyPoziom0" DataSourceID="SQLxGridSelectDoMapy" Width="240px" ClientInstanceName="ASPxEkranyPoziom0" ClientIDMode="Static"  SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false">
                                                            <Rows>
                                                                <dx:VerticalGridTextRow FieldName="E01" Caption="Ekran 1"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="E02" Caption="Ekran 2"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L01"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L02"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L03"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L04"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L05"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L06"></dx:VerticalGridTextRow>
                                                            </Rows>
                                                            <FormatConditions>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="E01" Format="Custom" CellStyle-BackColor="Red" Expression="E01 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="E02" Format="Custom" CellStyle-BackColor="Red" Expression="E02 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L01" Format="Custom" CellStyle-BackColor="Red" Expression="L01 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L02" Format="Custom" CellStyle-BackColor="Red" Expression="L02 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L03" Format="Custom" CellStyle-BackColor="Red" Expression="L03 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L04" Format="Custom" CellStyle-BackColor="Red" Expression="L04 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L05" Format="Custom" CellStyle-BackColor="Red" Expression="L05 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L06" Format="Custom" CellStyle-BackColor="Red" Expression="L06 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="E01" Format="Custom" CellStyle-BackColor="Green" Expression="E01 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="E02" Format="Custom" CellStyle-BackColor="Green" Expression="E02 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L01" Format="Custom" CellStyle-BackColor="Green" Expression="L01 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L02" Format="Custom" CellStyle-BackColor="Green" Expression="L02 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L03" Format="Custom" CellStyle-BackColor="Green" Expression="L03 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L04" Format="Custom" CellStyle-BackColor="Green" Expression="L04 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L05" Format="Custom" CellStyle-BackColor="Green" Expression="L05 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L06" Format="Custom" CellStyle-BackColor="Green" Expression="L06 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                            </FormatConditions>
                                                        </dx:ASPxVerticalGrid>
                                                    </td>
                                                </tr>
                                            </table>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Text="Poziom -1">
                                    <ContentCollection>
                                        <dx:ContentControl>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxImage runat="server" ImageUrl="~/PlanParkingu/minus1.png" Height="740px"></dx:ASPxImage>
                                                        <table style="bottom: 62px; left: 31px; position: relative">
                                                            <tr>
                                                                <td style="width: 56px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A15" ClientEnabled="false" ClientInstanceName="ASP_1A15"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 50px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A14" ClientEnabled="false" ClientInstanceName="ASP_1A14"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A13" ClientEnabled="false" ClientInstanceName="ASP_1A13"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A12" ClientEnabled="false" ClientInstanceName="ASP_1A12"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A11" ClientEnabled="false" ClientInstanceName="ASP_1A11"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A10" ClientEnabled="false" ClientInstanceName="ASP_1A10"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A09" ClientEnabled="false" ClientInstanceName="ASP_1A09"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A08" ClientEnabled="false" ClientInstanceName="ASP_1A08"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A07" ClientEnabled="false" ClientInstanceName="ASP_1A07"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 45px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A06" ClientEnabled="false" ClientInstanceName="ASP_1A06"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 46px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A05" ClientEnabled="false" ClientInstanceName="ASP_1A05"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 45px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A04" ClientEnabled="false" ClientInstanceName="ASP_1A04"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A03" ClientEnabled="false" ClientInstanceName="ASP_1A03"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A02" ClientEnabled="false" ClientInstanceName="ASP_1A02"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A01" ClientEnabled="false" ClientInstanceName="ASP_1A01"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 22px; bottom: 240px">
                                                            <tr>
                                                                <td style="width: 48px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A16" ClientEnabled="false" ClientInstanceName="ASP_1A16"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 47px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A17" ClientEnabled="false" ClientInstanceName="ASP_1A17"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A18" ClientEnabled="false" ClientInstanceName="ASP_1A18"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A19" ClientEnabled="false" ClientInstanceName="ASP_1A19"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 191px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A20" ClientEnabled="false" ClientInstanceName="ASP_1A20"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A21" ClientEnabled="false" ClientInstanceName="ASP_1A21"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A22" ClientEnabled="false" ClientInstanceName="ASP_1A22"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 131px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A23" ClientEnabled="false" ClientInstanceName="ASP_1A23"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 46px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A24" ClientEnabled="false" ClientInstanceName="ASP_1A24"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1A25" ClientEnabled="false" ClientInstanceName="ASP_1A25"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 24px; bottom: 350px">
                                                            <tr>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B13" ClientEnabled="false" ClientInstanceName="ASP_1B13"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 72px">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B12" ClientEnabled="false" ClientInstanceName="ASP_1B12"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B11" ClientEnabled="false" ClientInstanceName="ASP_1B11"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B10" ClientEnabled="false" ClientInstanceName="ASP_1B10"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B09" ClientEnabled="false" ClientInstanceName="ASP_1B09"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 128px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B08" ClientEnabled="false" ClientInstanceName="ASP_1B08"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B07" ClientEnabled="false" ClientInstanceName="ASP_1B07"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B06" ClientEnabled="false" ClientInstanceName="ASP_1B06"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B05" ClientEnabled="false" ClientInstanceName="ASP_1B05"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B04" ClientEnabled="false" ClientInstanceName="ASP_1B04"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B03" ClientEnabled="false" ClientInstanceName="ASP_1B03"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B02" ClientEnabled="false" ClientInstanceName="ASP_1B02"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B01" ClientEnabled="false" ClientInstanceName="ASP_1B01"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 46px; bottom: 525px">
                                                            <tr>
                                                                <td style="width: 48px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B14" ClientEnabled="false" ClientInstanceName="ASP_1B14"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B15" ClientEnabled="false" ClientInstanceName="ASP_1B15"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B16" ClientEnabled="false" ClientInstanceName="ASP_1B16"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B17" ClientEnabled="false" ClientInstanceName="ASP_1B17"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B18" ClientEnabled="false" ClientInstanceName="ASP_1B18"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B19" ClientEnabled="false" ClientInstanceName="ASP_1B19"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B20" ClientEnabled="false" ClientInstanceName="ASP_1B20"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B21" ClientEnabled="false" ClientInstanceName="ASP_1B21"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 210px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B22" ClientEnabled="false" ClientInstanceName="ASP_1B22"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 48px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B23" ClientEnabled="false" ClientInstanceName="ASP_1B23"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1B24" ClientEnabled="false" ClientInstanceName="ASP_1B24"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 46px; bottom: 635px">
                                                            <tr>
                                                                <td style="width: 48px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C09" ClientEnabled="false" ClientInstanceName="ASP_1C09"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C08" ClientEnabled="false" ClientInstanceName="ASP_1C08"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C07" ClientEnabled="false" ClientInstanceName="ASP_1C07"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C06" ClientEnabled="false" ClientInstanceName="ASP_1C06"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 42px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C05" ClientEnabled="false" ClientInstanceName="ASP_1C05"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C04" ClientEnabled="false" ClientInstanceName="ASP_1C04"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C03" ClientEnabled="false" ClientInstanceName="ASP_1C03"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 44px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C02" ClientEnabled="false" ClientInstanceName="ASP_1C02"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C01" ClientEnabled="false" ClientInstanceName="ASP_1C01"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="position: relative; left: 24px; bottom: 810px">
                                                            <tr>
                                                                <td style="width: 41px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C10" ClientEnabled="false" ClientInstanceName="ASP_1C10"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C11" ClientEnabled="false" ClientInstanceName="ASP_1C11"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C12" ClientEnabled="false" ClientInstanceName="ASP_1C12"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C13" ClientEnabled="false" ClientInstanceName="ASP_1C13"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C14" ClientEnabled="false" ClientInstanceName="ASP_1C14"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C15" ClientEnabled="false" ClientInstanceName="ASP_1C15"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C16" ClientEnabled="false" ClientInstanceName="ASP_1C16"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 40px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C17" ClientEnabled="false" ClientInstanceName="ASP_1C17"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C18" ClientEnabled="false" ClientInstanceName="ASP_1C18"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C19" ClientEnabled="false" ClientInstanceName="ASP_1C19"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td style="width: 43px;">
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C20" ClientEnabled="false" ClientInstanceName="ASP_1C20"></dx:ASPxCheckBox>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxCheckBox runat="server" ID="ASP_1C21" ClientEnabled="false" ClientInstanceName="ASP_1C21"></dx:ASPxCheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="vertical-align: top;">
                                                        <dx:ASPxVerticalGrid runat="server" ID="ASPxEkranyPoziom1" DataSourceID="SQLxGridSelectDoMapy" Width="240px" ClientInstanceName="ASPxEkranyPoziom1" ClientIDMode="Static" SettingsLoadingPanel-Mode="Disabled" EnablePagingCallbackAnimation="false" EnableCallbackAnimation="false">
                                                            <Rows>
                                                                <dx:VerticalGridTextRow FieldName="E03" Caption="Ekran 3"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L08"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L09"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L10"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L11"></dx:VerticalGridTextRow>
                                                                <dx:VerticalGridTextRow FieldName="L12"></dx:VerticalGridTextRow>
                                                            </Rows>
                                                            <FormatConditions>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="E03" Format="Custom" CellStyle-BackColor="Red" Expression="E03 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L08" Format="Custom" CellStyle-BackColor="Red" Expression="L08 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L09" Format="Custom" CellStyle-BackColor="Red" Expression="L09 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L10" Format="Custom" CellStyle-BackColor="Red" Expression="L10 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L11" Format="Custom" CellStyle-BackColor="Red" Expression="L11 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L12" Format="Custom" CellStyle-BackColor="Red" Expression="L12 = 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="E03" Format="Custom" CellStyle-BackColor="Green" Expression="E03 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L08" Format="Custom" CellStyle-BackColor="Green" Expression="L08 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L09" Format="Custom" CellStyle-BackColor="Green" Expression="L09 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L10" Format="Custom" CellStyle-BackColor="Green" Expression="L10 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L11" Format="Custom" CellStyle-BackColor="Green" Expression="L11 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                                <dx:VerticalGridFormatConditionHighlight FieldName="L12" Format="Custom" CellStyle-BackColor="Green" Expression="L12 > 0"></dx:VerticalGridFormatConditionHighlight>
                                                            </FormatConditions>
                                                        </dx:ASPxVerticalGrid>
                                                    </td>
                                                </tr>
                                            </table>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                            </TabPages>
                            <TabStyle BackColor="DarkGray"></TabStyle>
                            <ActiveTabStyle BackColor="White"></ActiveTabStyle>
                        </dx:ASPxPageControl>
                    </td>
                </tr>
            </table>
        </div>
        <dx:ASPxCallback runat="server" ID="cbMain" ClientInstanceName="cbMain" ClientIDMode="Static" OnCallback="cbMain_Callback">
            <ClientSideEvents EndCallback="cbMain_EndCallback" />
        </dx:ASPxCallback>
        <dx:ASPxTimer runat="server" ID="ASPxTimer" ClientInstanceName="ASPxTimer" ClientIDMode="Static" Interval="5000">
            <ClientSideEvents Tick="RefreshAll" />
        </dx:ASPxTimer>
        <asp:SqlDataSource runat="server" ID="SQLxGridSelectDoMapy" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            SelectCommand="dbs_Parkingowy_SelectEkrany"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SQLxGridParkStats" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            SelectCommand="dbs_Parkingowy_Stats" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SQLxGridBeacony" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            SelectCommand="dbs_Parkingowy_Beacony" SelectCommandType="StoredProcedure"
            UpdateCommand="dbs_Parkingowy_Beacony_Update" UpdateCommandType="StoredProcedure"
            InsertCommand="dbs_Parkingowy_Beacony_Insert" InsertCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ASPxComboBox_Sektor" Name="Sektor" />
            </SelectParameters>

            <InsertParameters>
                <asp:Parameter Name="Beacon_Id" />
                <asp:Parameter Name="Beacon_UId" />
                <asp:Parameter Name="Beacon_PietroSektor" />
                <asp:Parameter Name="Beacon_KoordynatyX" />
                <asp:Parameter Name="Beacon_KoordynatyY" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="Beacon_Id" />
                <asp:Parameter Name="Beacon_UId" />
                <asp:Parameter Name="Beacon_PietroSektor" />
                <asp:Parameter Name="Beacon_KoordynatyX" />
                <asp:Parameter Name="Beacon_KoordynatyY" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SQLxGridParkingowy" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            SelectCommand="dbs_Parkingowy_Select" SelectCommandType="StoredProcedure"
            InsertCommand="dbs_Parkingowy_Insert" InsertCommandType="StoredProcedure"
            UpdateCommand="dbs_Parkingowy_Update" UpdateCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ASPxComboBox_Sektor" Name="Sektor" />
            </SelectParameters>

            <InsertParameters>
                <asp:Parameter Name="Miejsce_Id" />
                <asp:Parameter Name="Miejsce_CzyZajete" DefaultValue="0" />
                <asp:Parameter Name="Miejsce_StatusBaterii" />
                <asp:Parameter Name="Miejsce_UIDCzujnika" />
                <asp:Parameter Name="Miejsce_KoordynatyX" />
                <asp:Parameter Name="Miejsce_KoordynatyY" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="Miejsce_Id" />
                <asp:Parameter Name="Miejsce_CzyZajete" />
                <asp:Parameter Name="Miejsce_StatusBaterii" />
                <asp:Parameter Name="Miejsce_UIDCzujnika" />
                <asp:Parameter Name="Miejsce_KoordynatyX" />
                <asp:Parameter Name="Miejsce_KoordynatyY" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

