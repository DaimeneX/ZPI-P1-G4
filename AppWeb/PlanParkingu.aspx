<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="PlanParkingu.aspx.cs" Inherits="PlanParkingu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MasterPageHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterPageBody" runat="Server">
    <div style="width: 1180px">
        <table>
            <tr>
                <td>
                    <dx:ASPxPageControl runat="server" ID="ASPxPageControl" ActiveTabIndex="0">
                        <TabPages>
                            <dx:TabPage Text="Parter">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxImage runat="server" ImageUrl="~/PlanParkingu/parter.png" Height="740px"></dx:ASPxImage>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Poziom -1">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxImage runat="server" ImageUrl="~/PlanParkingu/minus1.png" Height="740px"></dx:ASPxImage>
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
</asp:Content>

