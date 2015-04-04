

//
// Loading
//

class Loading:  MobileApplicationScreenWidget
{
	public Loading() {
		
	}

		public Object get_mobile_app_title() {
		return(null);
	}

	 
	public void initialize() {
		base.initialize();

	
		add(CanvasWidget.for_color(Color.instance("#9AD9EA")));
	
	}




	// This is where i want to load and connect to server

	



	
		public bool on_pointer_release(int x, int y, int button, int id) {
		push_screen(new Home());
		return(true);
	}
		

	
}