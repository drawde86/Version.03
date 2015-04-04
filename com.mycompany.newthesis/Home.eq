
//
// Home
//


class Home : MobileApplicationScreenWidget
{



	public Object get_mobile_app_title() {
		return(null);
	}

	ButtonWidget button;
	
	public void initialize() {
			base.initialize();

//	var Page = BoxWidget.vertical();
//	Page.add(CanvasWidget.for_color_gradient(Color.instance("#F0F0F0")));
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


//	add(VScrollerWidget.for_widget(Page));

//First Block	
	var notification = LayerWidget.instance();
		notification.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		notification.add(ButtonWidget.for_string("Notification").set_event("blk1"));
		notification.set_size_request_padding (0 , 0);
		notification.set_align(0,0);
		notification.set_margins(70,225, 95 ,385);
		add(notification);



//block2
	var document  = LayerWidget.instance();
		document.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		document.add(ButtonWidget.for_string("Document").set_event("blk2"));
		document.set_size_request_padding (50 , 50);
		document.set_align(0,0);
		document.set_margins(225,70, 95 ,385);
		add(document);



//block3

	var calendar = LayerWidget.instance();
		calendar.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		calendar.add(ButtonWidget.for_string("Calendar").set_event("blk3"));
		calendar.set_size_request_padding (50 , 50);
		calendar.set_align(0,0);
		calendar.set_margins(75,220, 195 ,285);
		add(calendar);


//block4
	var contact  = LayerWidget.instance();
		contact.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		contact.add(ButtonWidget.for_string("Contacts").set_event("blk4"));
		contact.set_size_request_padding (50 , 50);
		contact.set_align(0,0);
		contact.set_margins(220,75, 195 ,285);
		add(contact);



//block5
	var statistics = LayerWidget.instance();
		statistics.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		statistics.add(ButtonWidget.for_string("Statistics").set_event("blk5"));
		statistics.set_size_request_padding (150 , 50);
		statistics.set_align(0,0);
		statistics.set_margins(95,95, 295 ,185);
		add(statistics);
	
//Footer
	var footer = BoxWidget.horizontal();	
		footer.add(ImageWidget.for_resource("bg-wrapper").set_mode("fill"));
		footer.set_align(0,0);
		footer.set_margins(0,0, 495 ,0);
		add(footer);
	

	




}



	public void on_event(Object o) {
		if("blk1".equals(o)) {
			push_screen(new Notification());
		}
		else if("blk2".equals(o)) {
			push_screen(new Mydocument());
		}
		else if("blk3".equals(o)) {
			push_screen(new Calendar());
		}
		else if("blk4".equals(o)) {
			push_screen(new Contacts());
		}
		else if("blk5".equals(o)) {
			push_screen(new Statistics());
		}
		else if("prof".equals(o)) {
			push_screen(new Prof());
		}
		
		}


	
		



	
		
}