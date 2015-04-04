
//
// Prof
//

public class Prof: MobileApplicationScreenWidget
{
		public Object get_mobile_app_title() {
		return(null);
	}

	
	public Prof() {




		//background color
	add(CanvasWidget.for_color_gradient(Color.instance("#F0F0F0")));

//header
	var header = LayerWidget.instance();	

	header.add(CanvasWidget.for_color(Color.instance("#000000")));

	var H = AlignWidget.instance();

	H.set_margins(0,0,0,495);
	H.add_align(0,0,header);
	add(H);
	
	var headerimage = LayerWidget.instance();
	headerimage.add(ImageWidget.for_resource("logo").set_mode("fit"));
	var HI = AlignWidget.instance();
	HI.set_margins(0,100 ,5,500);
	HI.add_align(0,0,headerimage);
	add(HI);




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


	var home_align = AlignWidget.instance();
	home_align.set_margins(270,5,14,515);
	home_align.add_align(0,0,homebutt);
	add(home_align);





	var footer = BoxWidget.horizontal();	
	footer.add(ImageWidget.for_resource("bg-wrapper").set_mode("fill"));
	footer.add(ButtonWidget.for_string("Profile").set_event("blk1"));
	footer.add(ButtonWidget.for_string("Profile").set_event("blk1"));
	var I = AlignWidget.instance();

	I.set_margins(0,0,520,0);
	I.add_align(0,0,footer);
		add(I);
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