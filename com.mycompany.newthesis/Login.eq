
//
// Login
//

class Login : MobileApplicationScreenWidget
{


	static String Username;
	static String Password;

	private static void store_user(String id, FormWidget a)
	{
		Username = a.get_form_field_value_string(id);
	}

	private static void store_pass(String id, FormWidget a)
	{
		Password = a.get_form_field_value_string(id);
	}

	private static String  get_user()
	{
			return(Username);
	}
	private static String  get_pass()
	{
			return(Password);
	}



	public Object get_mobile_app_title() {
		return(null);
	}

	public static void connect_to_url()
	{
		String url;
   	 String Uadmin="b17_16017434";
	    String Padmin="rector";
//		url.for_string();
		url.set_username(Uadmin);
		url.set_password(Padmin);
	}


//	public static void connect_to_url( String User, String Pass)
//	{
//		var  url;
//		url.for_string("http://185.27.134.10/sql.php?db=b17_16017434_rector&table=members&token=60b01badf064ed61c82f2b49d1b251aa");
//		url.set_username(User);
//		url.set_password(Pass);
//	}
	
	public void initialize() {

		
		base.initialize();
			add(CanvasWidget.for_color(Color.instance("#9AD9EA")));

		var    myformuser = FormWidget.instance();
		var    myformpass = FormWidget.instance();
		var	button = LayerWidget.instance();
		var	user = Font.instance();

				
		myformuser.add_text_field("Uname", "Username",null , null, "Username");

		var useralign = AlignWidget.instance();
		useralign.set_margins(50,50, 80 , 280);
		useralign.add_align(0, 0, myformuser);
		add(useralign);

		
	    store_user("Uname",myformuser);
			
		
		myformpass.add_text_field("Pword", "Password",null, null, "Password");
	
		var passalign = AlignWidget.instance();
		passalign.set_margins(50,50, 120 , 200);
		passalign.add_align(0, 0, myformpass);
		add(passalign);
		
		store_pass("Pword",myformpass);



		button.add(ButtonWidget.for_string("Log-In").set_event("login"));
		button.set_size_request_padding (230, -11);

		
		var buttonalign = AlignWidget.instance();
		buttonalign.set_margins(50,50, 200 , 150);
		buttonalign.add_align(0, 0, button);
		add(buttonalign);



		

	
	
		}


			public void on_event(Object a) {

		
		if("login".equals(a)) {
		
//	add(new TADisplayWidget().set_text(id));

			
			//	push_screen(new Loading());
		}
		}

}