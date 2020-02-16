using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShop
{
	public partial class Payment : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void PaymentClick(object sender, ImageClickEventArgs e)
		{
			Response.Redirect("PaymentPage.aspx");
		}
		protected void StartAgainClick(object sender, ImageClickEventArgs e)
		{
			Response.Redirect("Payment.aspx");
		}
		protected void CancelClick(object sender, ImageClickEventArgs e)
		{
			Response.Redirect("CancelPage.aspx");
		}
	}
}