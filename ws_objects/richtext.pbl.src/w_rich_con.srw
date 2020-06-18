$PBExportHeader$w_rich_con.srw
forward
global type w_rich_con from window
end type
type st_1 from statictext within w_rich_con
end type
type st_name from statictext within w_rich_con
end type
type sle_value from singlelineedit within w_rich_con
end type
type cb_2 from commandbutton within w_rich_con
end type
type sle_name from singlelineedit within w_rich_con
end type
type cb_1 from commandbutton within w_rich_con
end type
type rte_test from richtextedit within w_rich_con
end type
end forward

global type w_rich_con from window
integer width = 4096
integer height = 2732
boolean titlebar = true
string title = "Richtext Control"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
st_name st_name
sle_value sle_value
cb_2 cb_2
sle_name sle_name
cb_1 cb_1
rte_test rte_test
end type
global w_rich_con w_rich_con

on w_rich_con.create
this.st_1=create st_1
this.st_name=create st_name
this.sle_value=create sle_value
this.cb_2=create cb_2
this.sle_name=create sle_name
this.cb_1=create cb_1
this.rte_test=create rte_test
this.Control[]={this.st_1,&
this.st_name,&
this.sle_value,&
this.cb_2,&
this.sle_name,&
this.cb_1,&
this.rte_test}
end on

on w_rich_con.destroy
destroy(this.st_1)
destroy(this.st_name)
destroy(this.sle_value)
destroy(this.cb_2)
destroy(this.sle_name)
destroy(this.cb_1)
destroy(this.rte_test)
end on

type st_1 from statictext within w_rich_con
integer x = 782
integer y = 1868
integer width = 402
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "value:"
boolean focusrectangle = false
end type

type st_name from statictext within w_rich_con
integer x = 114
integer y = 1868
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
string text = "name:"
boolean focusrectangle = false
end type

type sle_value from singlelineedit within w_rich_con
integer x = 782
integer y = 2008
integer width = 558
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "AppeonSample"
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_rich_con
integer x = 1691
integer y = 1996
integer width = 594
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "inputfieldchangedata"
end type

event clicked;string ls_name,ls_value
integer li_rtn

ls_name = sle_name.text
ls_value = sle_value.text

if ls_name = "" then
	messagebox("inputfieldchangedata","please input an exist inputfieldname in name")
else
	li_rtn = rte_test.inputfieldchangedata(ls_name,ls_value)
end if

if li_rtn = 1 then
	messagebox("inputfieldchangedata","change inputfield(" + ls_name + ") value to " + ls_value + " success")
else
	messagebox("inputfieldchangedata","change inputfield(" + ls_name + ") value to " + ls_value + " fail")
end if
end event

type sle_name from singlelineedit within w_rich_con
integer x = 114
integer y = 2008
integer width = 475
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Test"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_rich_con
integer x = 1687
integer y = 1804
integer width = 439
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "inputfieldinsert"
end type

event clicked;integer li_rtn
string ls_name
ls_name = sle_name.text

if ls_name = "" then
	messagebox("inputfieldinsert","please input a inputfieldname in name")
else
	li_rtn = rte_test.inputfieldinsert(ls_name)
	//mle_result.text += "inputfieldinsert() = " + string(li_rtn) + "~r~n"
end if
end event

type rte_test from richtextedit within w_rich_con
integer x = 9
integer width = 3909
integer height = 1728
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean init_hscrollbar = true
boolean init_vscrollbar = true
boolean init_inputfieldsvisible = true
boolean init_rulerbar = true
boolean init_tabbar = true
boolean init_toolbar = true
boolean init_headerfooter = true
boolean init_popmenu = true
boolean init_displayonly = true
borderstyle borderstyle = stylelowered!
end type

