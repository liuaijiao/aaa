$PBExportHeader$w_rich_dw.srw
forward
global type w_rich_dw from window
end type
type cb_4 from commandbutton within w_rich_dw
end type
type cb_3 from commandbutton within w_rich_dw
end type
type cb_2 from commandbutton within w_rich_dw
end type
type cb_1 from commandbutton within w_rich_dw
end type
type dw_1 from datawindow within w_rich_dw
end type
end forward

global type w_rich_dw from window
integer width = 3959
integer height = 2372
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_rich_dw w_rich_dw

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()


end event

on w_rich_dw.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_rich_dw.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_4 from commandbutton within w_rich_dw
integer x = 1865
integer y = 1764
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Distill"
end type

event clicked;

integer li_rtn

dw_1.accepttext()

dw_1.Modify("DataWindow.Export.PDF.Method = Distill!")
dw_1.Modify("DataWindow.Export.PDF.Distill.CustomPostScript=Yes ")
dw_1.object.datawindow.printer = "Ghostscript PDF"

li_rtn=dw_1.Saveas('', pdf!, TRUE)
messagebox("Test",string(li_rtn))
end event

type cb_3 from commandbutton within w_rich_dw
integer x = 1326
integer y = 1792
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Native"
end type

event clicked;//dw_1.Modify("DataWindow.Export.PDF.Method= NativePDF!")
//dw_1.saveas("",pdf!,true)

integer li_rtn

dw_1.accepttext()

dw_1.Modify("DataWindow.Export.PDF.Method = NativePDF!")
//dw_1.Modify("DataWindow.Export.PDF.NativePDF.CustomOrientation='1'")


li_rtn=dw_1.Saveas('', pdf!, TRUE)

messagebox("Test",string(li_rtn))
end event

type cb_2 from commandbutton within w_rich_dw
integer x = 754
integer y = 1776
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "saveas"
end type

event clicked;dw_1.saveas('',pdf!,true)
end event

type cb_1 from commandbutton within w_rich_dw
integer x = 247
integer y = 1796
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "exit"
end type

event clicked;close(w_rich_dw)
end event

type dw_1 from datawindow within w_rich_dw
integer x = 27
integer y = 28
integer width = 3717
integer height = 1496
integer taborder = 10
string title = "none"
string dataobject = "d_rich"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

