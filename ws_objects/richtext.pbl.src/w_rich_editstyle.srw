$PBExportHeader$w_rich_editstyle.srw
forward
global type w_rich_editstyle from window
end type
type cb_8 from commandbutton within w_rich_editstyle
end type
type cb_7 from commandbutton within w_rich_editstyle
end type
type cb_6 from commandbutton within w_rich_editstyle
end type
type cb_5 from commandbutton within w_rich_editstyle
end type
type cb_4 from commandbutton within w_rich_editstyle
end type
type cb_3 from commandbutton within w_rich_editstyle
end type
type cb_2 from commandbutton within w_rich_editstyle
end type
type cb_1 from commandbutton within w_rich_editstyle
end type
type rb_6 from radiobutton within w_rich_editstyle
end type
type rb_5 from radiobutton within w_rich_editstyle
end type
type rb_4 from radiobutton within w_rich_editstyle
end type
type rb_3 from radiobutton within w_rich_editstyle
end type
type rb_2 from radiobutton within w_rich_editstyle
end type
type rb_1 from radiobutton within w_rich_editstyle
end type
type dw_1 from datawindow within w_rich_editstyle
end type
type gb_1 from groupbox within w_rich_editstyle
end type
end forward

global type w_rich_editstyle from window
integer width = 3959
integer height = 3384
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_8 cb_8
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
rb_6 rb_6
rb_5 rb_5
rb_4 rb_4
rb_3 rb_3
rb_2 rb_2
rb_1 rb_1
dw_1 dw_1
gb_1 gb_1
end type
global w_rich_editstyle w_rich_editstyle

forward prototypes
public subroutine of_setdataobject (string as_text)
end prototypes

public subroutine of_setdataobject (string as_text);dw_1.dataobject = "d_dwstyle_" + as_text
dw_1.settransobject(sqlca)

end subroutine

on w_rich_editstyle.create
this.cb_8=create cb_8
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.rb_6=create rb_6
this.rb_5=create rb_5
this.rb_4=create rb_4
this.rb_3=create rb_3
this.rb_2=create rb_2
this.rb_1=create rb_1
this.dw_1=create dw_1
this.gb_1=create gb_1
this.Control[]={this.cb_8,&
this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.rb_6,&
this.rb_5,&
this.rb_4,&
this.rb_3,&
this.rb_2,&
this.rb_1,&
this.dw_1,&
this.gb_1}
end on

on w_rich_editstyle.destroy
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.rb_6)
destroy(this.rb_5)
destroy(this.rb_4)
destroy(this.rb_3)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.dw_1)
destroy(this.gb_1)
end on

type cb_8 from commandbutton within w_rich_editstyle
integer x = 2277
integer y = 2628
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "printsetup"
end type

event clicked;printsetup()

end event

type cb_7 from commandbutton within w_rich_editstyle
integer x = 2277
integer y = 2472
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "print"
end type

event clicked;dw_1.print()
end event

type cb_6 from commandbutton within w_rich_editstyle
integer x = 2277
integer y = 2312
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "distill"
end type

event clicked;dw_1.object.datawindow.export.pdf.method = Distill!
dw_1.object.datawindow.printer = "Ghostscript PDF"
dw_1.object.datawindow.wexport.pdf.distill.custompostscript = 'Yes'

dw_1.saveas(' ',PDF!,true)
end event

type cb_5 from commandbutton within w_rich_editstyle
integer x = 2277
integer y = 2136
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "nativepdf"
end type

event clicked;
integer li_rtn

//dw_1.accepttext()

//dw_1.Modify("DataWindow.Export.PDF.Method = NativePDF!")
//dw_1.Modify("DataWindow.Export.PDF.NativePDF.CustomOrientation='1'")

dw_1.Object.DataWindow.Export.PDF.Method=NativePDF!

li_rtn=dw_1.Saveas('', pdf!, TRUE)


messagebox("Test",string(li_rtn))
end event

type cb_4 from commandbutton within w_rich_editstyle
integer x = 1582
integer y = 2628
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "update"
end type

event clicked;integer li_rtn

li_rtn = dw_1.update(true,false)

if li_rtn = 1 then 
	commit;
	messagebox('Info',"Update Success!")
else 
	rollback;
	messagebox('Info',"Update Failed!")
end if

end event

type cb_3 from commandbutton within w_rich_editstyle
integer x = 1582
integer y = 2472
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "deleterow"
end type

event clicked;
//删除当前行

dw_1.deleterow(0)
end event

type cb_2 from commandbutton within w_rich_editstyle
integer x = 1582
integer y = 2312
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "insertrow"
end type

event clicked;//插入到最后一行
//dw_1.insertrow(0)

 //插入到第一行
dw_1.insertrow(1)   

end event

type cb_1 from commandbutton within w_rich_editstyle
integer x = 1582
integer y = 2136
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "retrieve"
end type

event clicked;dw_1.reset()
dw_1.retrieve()
end event

type rb_6 from radiobutton within w_rich_editstyle
integer x = 699
integer y = 2560
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "treeview"
end type

event clicked;of_setdataobject(this.text )
end event

type rb_5 from radiobutton within w_rich_editstyle
integer x = 699
integer y = 2412
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "nup"
end type

event clicked;of_setdataobject(this.text )
end event

type rb_4 from radiobutton within w_rich_editstyle
integer x = 151
integer y = 2560
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "tabular"
end type

event clicked;of_setdataobject(this.text )
end event

type rb_3 from radiobutton within w_rich_editstyle
integer x = 151
integer y = 2412
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "group"
end type

event clicked;of_setdataobject(this.text )
end event

type rb_2 from radiobutton within w_rich_editstyle
integer x = 699
integer y = 2268
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "grid"
end type

event clicked;of_setdataobject(this.text )
end event

type rb_1 from radiobutton within w_rich_editstyle
integer x = 151
integer y = 2268
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "freeform"
end type

event clicked;of_setdataobject(this.text )
end event

type dw_1 from datawindow within w_rich_editstyle
integer x = 78
integer y = 60
integer width = 3433
integer height = 1964
integer taborder = 10
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_rich_editstyle
integer x = 87
integer y = 2136
integer width = 1111
integer height = 612
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 134217752
string text = "dwstyle"
borderstyle borderstyle = styleraised!
end type

