<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="FlowerShop.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<title>Flowershop</title>
	<link rel="stylesheet" href="FlowerStyleSheet.css" />
	<script src="Validation.js"></script>
</head>
<body>
	<form id="form1" runat="server" style="line-height: 30px">
		<div class="BorderContent">
			<div>
				<h2>FLOWER SHOP ONLINE</h2>

			</div>

			<div class="Formfill"></div>
			<div></div>
			<div class="row">
				<div class="floweralign">
					<asp:Image ImageUrl="/Images/img.png" runat="server" />
				</div>
				<div class="paymentBlog">
					<h2>Secure Payment Page</h2>
					<div class="row">
						<div class="paymentDetailBlog">
							<label><b>Select Language</b></label><br />
							<label>Payment method</label><br />
							<label>Description</label><br />
							<label>Amount</label><br />
						</div>
						<div class="paymentboxBlog">
							<select id="txtLanguage" name="Language" style="width: 180px">
								<option value="English">English</option>
								<option value="Spain">Spain</option>
								<option value="Russian">Russian</option>
								<option value="Tamil">Tamil</option>
								<option value="Hindi">Hindi</option>
							</select><br />
							<label><b>Visa</b></label><br />
							<label><b>Item ordered</b></label><br />
							<label><b>&euro; 100.00</b></label>
						</div>
						<div class="Visa">
							<img src="Visa_Logo.png" height="30" style="width: 50px" />
						</div>
					</div>
					<div class="CardBackgroundColor">
						<div class="CardDetail">
							<p><b>Card details </b>
							<img src="gg1.png"  width="20" height="20" style="float: right; margin: 0px 10px 10px 0px;" /></p>
						</div>
						<div>
							<label>You must fill in fields marked with *</label>
						</div>
						<div style="margin-bottom: 1px">
							<div class="CardDetailText">
								<label>* Card number</label><br />
								<label>* <u>Security code</u></label><br />
								<label>* Expiry date</label><br />
								<label>* Cardholder's name</label><br />
							</div>
							<div class="CardBox">
								<input type="text" id="txtCardNumber" name="cardNumber"  onchange="ValidateCard()" style="width: 300px" /><br />
								<input type="text" id="txtSecurityCode" name="securityCode" onchange="ValidateSecurityCode()" style="width: 300px" /><br />
								<select id="month" name="month" style="width: 45px">
									<option value="January">Jan</option>
									<option value="February">Feb</option>
									<option value="March">Mar</option>
									<option value="April">Apr</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">July</option>
									<option value="August">Aug</option>
									<option value="September">Sep</option>
									<option value="October">Oct</option>
									<option value="November">Nov</option>
									<option value="December">Dec</option>
								</select>
								<select id="Year" name="Year" style="width: 55px">
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
									<option value="2028">2028</option>
									<option value="2029">2029</option>
									<option value="2030">2030</option>
									<option value="2031">2031</option>
								</select>
								<input type="text" id="CardholderName" name="CardholderName" style="width: 300px" /><br />
							</div>
						</div>
					</div>
					<div class="CardBackgroundColor">
						<div class="CardDetail">
							<p><b>Cardholder details </b>
							<img src="gg1.png"  width="20" height="20" style="float: right; margin: 0px 10px 10px 0px;" /></p>
						</div>
						<div>
							<label>You must fill in fields marked with *</label>
						</div>
						<div>
							<div class="CardDetailText">
								<label>* Address 1</label><br />
								<label>&nbsp;&nbsp;&nbsp;Address 2</label><br />
								<label>&nbsp;&nbsp;&nbsp;Address 3</label><br />
								<label>* Town/City</label><br />
								<label>&nbsp;&nbsp;&nbsp;Region</label><br />
								<label>* Postcode/Zip code</label><br />
								<label>* Country</label><br />
								<label>&nbsp;&nbsp;&nbsp;Telephone</label><br />
								<label>&nbsp;&nbsp;&nbsp;Fax</label><br />
								<label>* Email address</label><br />
								<br />
							</div>
							<div class="CardBox">
								<input type="text" id="txtAddress1" name="Address1" onchange=" ValidateAddress1()" style="width: 300px" /><br />
								<input type="text" id="txtAddress2" name="Address2" onchange=" ValidateAddress2()" style="width: 300px" /><br />
								<input type="text" id="txtAddress3" name="Address3" onchange=" ValidateAddress3()" style="width: 300px" /><br />
								<input type="text" id="txtCity" name="Town" onchange="ValidateCity()" style="width: 300px" /><br />
								<input type="text" id="txtRegion" name="Region" onchange="ValidateRegion()" style="width: 300px" /><br />
								<input type="text" id="txtPostCode" name="Postcode" onchange="ValidatePostCode()" style="width: 150px" /><br />
								<select id="Country" name="Country" style="width: 180px">
									<option value="India">India</option>
									<option value="USA">USA</option>
									<option value="Russia">Russia</option>
									<option value="Spain">Spain</option>
									<option value="Australia">Australia</option>
								</select><br />
								<input type="text" id="txtTelephone" name="Telephone" onchange="ValidatePhoneNo()" style="width: 150px" /><br />
								<input type="text" id="txtFax" name="Fax" onchange="ValidateFax()" style="width: 150px" /><br />
								<input type="text" id="txtEmail" name="EmailId" onchange=" ValidateEmail()" style="width: 300px" /><br />
								<br />
							</div>
						</div>
					</div>
					<div>

						<p>
							<asp:ImageButton ImageUrl="/Images/startAgain.png" runat="server" Width="25px" Height="25px" OnClick="StartAgainClick" />
                            <input type="button" name="startAgain" value="START AGAIN" class="button" />
					<br />
							 <asp:ImageButton ImageUrl="/Images/cancel.png" runat="server" Width="25px" Height="25px" OnClick="CancelClick" />
                            <input type="reset" name="cancel" value="CANCEL" class="button" />
							<input type="submit" name="makePayment" value="MAKE PAYMENT" class="makepayment" />
							<asp:ImageButton ImageUrl="/Images/gg.png" runat="server" Style="float: right" Width="45px" Height="45px" OnClick="PaymentClick" />
						</p>
					</div>
					<hr class="line" />
					<h3>Refunds and Returns</h3>
					<p style="color: midnightblue">
						For more information visit our <u>Refunds and Returns Policy</u>
					</p>
					<p style="color: midnightblue">
						<asp:Image ImageUrl="/Images/pay.png" runat="server" />
						For help with your payment visit the <u>Worldpay Help</u>
					</p>

				</div>
			</div>


			<div class="footer">
				<h2>Thank you for shopping at Flowershop. Have a nice day.</h2>
			</div>
		</div>
	</form>
</body>
</html>
