<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MasterPageHead" runat="Server">
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
                    <dx:ASPxComboBox runat="server" ID="ASPxComboBox_Sektor" AutoPostBack="true" SelectedIndex="0" Font-Size="Larger" BackColor="LightGreen">
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
                <td style="padding-left: 8px"><dx:ASPxButton runat="server" Text="Odśwież" ID="ASPxRefresh" Font-Size="Larger" OnClick="ASPxRefresh_Click"></dx:ASPxButton></td>
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
                                        <dx:ASPxGridView runat="server" ID="ASPxGridParkingowy" DataSourceID="SQLxGridParkingowy" Width="600px" KeyFieldName="Miejsce_Id">
                                            <SettingsDetail ShowDetailRow="true" />
                                            <SettingsPager>
                                                <PageSizeItemSettings Visible="true"></PageSizeItemSettings>
                                            </SettingsPager>
                                            <Settings ShowFilterRow="true" ShowFilterBar="Visible" />
                                            <FormatConditions>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_StatuSBaterii" Format="Custom" Expression="Miejsce_StatuSBaterii > '2.0'">
                                                    <CellStyle BackColor="Green" ForeColor="White"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_StatuSBaterii" Format="Custom" Expression="Miejsce_StatuSBaterii < '2.0'">
                                                    <CellStyle BackColor="Yellow" ForeColor="Black"></CellStyle>
                                                </dx:GridViewFormatConditionHighlight>
                                                <dx:GridViewFormatConditionHighlight FieldName="Miejsce_StatuSBaterii" Format="Custom" Expression="Miejsce_StatuSBaterii < '1.0'">
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
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_Id" Caption="Miejsce parkingowe"></dx:GridViewDataTextColumn>
                                                <dx:GridViewDataCheckColumn FieldName="Miejsce_CzyZajete" Caption="Czy zajęte?" Width="40px">
                                                    <PropertiesCheckEdit DisplayTextChecked="Tak" DisplayTextUnchecked="Nie"></PropertiesCheckEdit>
                                                </dx:GridViewDataCheckColumn>
                                                <dx:GridViewDataTextColumn FieldName="Miejsce_StatuSBaterii" Caption="Napięcie baterii" Width="100px"></dx:GridViewDataTextColumn>
                                            </Columns>

                                            <Templates>
                                                <DetailRow>
                                                    <dx:ASPxGridView runat="server" ID="ASPxGridDetale" DataSourceID="SQLxGridDetale" OnBeforePerformDataSelect="ASPxGridDetale_BeforePerformDataSelect">
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
                            <dx:TabPage Text="Statystyki">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxGridView runat="server" ID="ASPxGridParkStats" DataSourceID="SQLxGridParkStats" Width="600px" KeyFieldName="Stat_Id">
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
                        </TabPages>
                    </dx:ASPxPageControl>
                </td>
                <td style="padding-left: 3px; vertical-align: top;">
                    <dx:ASPxVerticalGrid runat="server" ID="ASPxGridALL" DataSourceID="SQLxGridALL" Width="240px">
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
                    <dx:ASPxVerticalGrid runat="server" ID="ASPxGridALLZajete" DataSourceID="SQLxGridALLZajete" Width="240px">
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
        <asp:SqlDataSource runat="server" ID="SQLxGridParkStats" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            SelectCommand="dbs_Parkingowy_Stats" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SQLxGridParkingowy" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            SelectCommand="dbs_Parkingowy_Select" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ASPxComboBox_Sektor" Name="Sektor" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

