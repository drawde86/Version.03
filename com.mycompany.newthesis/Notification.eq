
//
// Notification
//

public class Notification: MobileApplicationScreenWidget

{
		public Object get_mobile_app_title() {
		return(null);
	}
	
	public Notification() {
	//background color
	add(CanvasWidget.for_color_gradient(Color.instance("#F0F0F0")));
//header
	var header = LayerWidget.instance();	

		header.add(CanvasWidget.for_color(Color.instance("#000000")));	
		header.set_align(0,0);
		header.set_size_request_padding(150,-150);
		header.set_margins(0,0,0,495);
		add(header);
	
	var headerimage = LayerWidget.instance();
		headerimage.add(ImageWidget.for_resource("logo").set_mode("fit"));
		headerimage.set_align(0,0);
		headerimage.set_margins(0,100 ,5,500);
		add(headerimage);

//Settings

	var menu = MenuWidget.instance();
		menu.add_entry(IconCache.get("defaultpic"), "<NAME>", "Create a new document", "prof");
		menu.add_entry(IconCache.get("open"), "Edit Profile", "Open an existing document", "open_document");
		menu.add_entry(IconCache.get(""),"About", "", "");
		menu.add_entry(IconCache.get(""),"Help", "", "");
		menu.add_separator();
		menu.add_entry(IconCache.get("exit"), "Exit", "Exit the application", "exit_application");
		menu.add_entry(IconCache.get(""), "Change User", "", "");

	var menubutton = ButtonWidget.for_icon(IconCache.get("settings"));
		menubutton.set_popup(menu);

	var menua = AlignWidget.instance();
		menua.set_margins(370,5, 0 , 500);		
		menua.add_align(0, 0, menubutton);
		add(menua);

//Homebutton
	var homebutt = LayerWidget.instance();
		homebutt.add(ButtonWidget.for_string(null).set_event("homebutt"));
		homebutt.add(ImageWidget.for_resource("homebutton").set_mode("fit"));
		homebutt.set_size_request_padding (15 ,50);
		homebutt.set_align(0,0);
		homebutt.set_margins(325,60,15,515);
		add(homebutt);
	
//Footer
	var footer = BoxWidget.horizontal();	
		footer.add(ImageWidget.for_resource("bg-wrapper").set_mode("fill"));
		footer.set_align(0,0);
		footer.set_margins(0,0, 495 ,0);
		add(footer);
	



		
	}

	
		public void on_event(Object o) {
		if("homebutt".equals(o)) {
			push_screen(new Home());
		}
		else if("prof".equals(o)) {
			push_screen(new Prof());
		}

		
		}
}