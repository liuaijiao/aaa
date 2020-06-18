$PBExportHeader$w_test2.srw
forward
global type w_test2 from window
end type
type dw_1 from datawindow within w_test2
end type
type rte_1 from richtextedit within w_test2
end type
end forward

global type w_test2 from window
integer width = 3959
integer height = 1788
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
rte_1 rte_1
end type
global w_test2 w_test2

on w_test2.create
this.dw_1=create dw_1
this.rte_1=create rte_1
this.Control[]={this.dw_1,&
this.rte_1}
end on

on w_test2.destroy
destroy(this.dw_1)
destroy(this.rte_1)
end on

type dw_1 from datawindow within w_test2
integer x = 59
integer y = 980
integer width = 3470
integer height = 664
integer taborder = 20
string title = "none"
string dataobject = "d_rich"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type rte_1 from richtextedit within w_test2
integer x = 82
integer y = 20
integer width = 3438
integer height = 924
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean init_inputfieldsvisible = true
boolean init_rulerbar = true
boolean init_tabbar = true
boolean init_toolbar = true
boolean init_headerfooter = true
boolean init_popmenu = true
borderstyle borderstyle = stylelowered!
end type

