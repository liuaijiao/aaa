$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type cb_13 from commandbutton within w_test
end type
type cb_12 from commandbutton within w_test
end type
type cb_11 from commandbutton within w_test
end type
type cb_10 from commandbutton within w_test
end type
type cb_9 from commandbutton within w_test
end type
type cb_8 from commandbutton within w_test
end type
type cb_7 from commandbutton within w_test
end type
type cb_6 from commandbutton within w_test
end type
type cb_5 from commandbutton within w_test
end type
type cb_4 from commandbutton within w_test
end type
type cb_3 from commandbutton within w_test
end type
type cb_2 from commandbutton within w_test
end type
type mle_1 from multilineedit within w_test
end type
type cb_1 from commandbutton within w_test
end type
type dw_1 from datawindow within w_test
end type
end forward

global type w_test from window
integer width = 3959
integer height = 2740
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_13 cb_13
cb_12 cb_12
cb_11 cb_11
cb_10 cb_10
cb_9 cb_9
cb_8 cb_8
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
mle_1 mle_1
cb_1 cb_1
dw_1 dw_1
end type
global w_test w_test

event open;dw_1.settransobject( sqlca)			
dw_1.retrieve( )
end event

on w_test.create
this.cb_13=create cb_13
this.cb_12=create cb_12
this.cb_11=create cb_11
this.cb_10=create cb_10
this.cb_9=create cb_9
this.cb_8=create cb_8
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.mle_1=create mle_1
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_13,&
this.cb_12,&
this.cb_11,&
this.cb_10,&
this.cb_9,&
this.cb_8,&
this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.mle_1,&
this.cb_1,&
this.dw_1}
end on

on w_test.destroy
destroy(this.cb_13)
destroy(this.cb_12)
destroy(this.cb_11)
destroy(this.cb_10)
destroy(this.cb_9)
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.mle_1)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_13 from commandbutton within w_test
integer x = 1243
integer y = 2388
integer width = 741
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ShowHeadFoot(true,false)"
end type

event clicked;integer li_rtn
long ll_startline,ll_startchar,ll_endline,ll_endchar
band lb_band

setnull(lb_Band)
			ll_startline = 0 
			ll_startchar = 0 	
			ll_endline = 0 
			ll_endchar = 0 

			li_rtn = 0 
			li_rtn = dw_1.ShowHeadFoot(true,false)	
			lb_Band = dw_1.position( ll_startline, ll_startchar, ll_endline, ll_endchar)
			mle_1.text+= "dw_1.ShowHeadFoot(true,false):" + string(lb_band) +"," + string(ll_startline)+"," + string(ll_startchar)+"," + string(ll_endline)+"," + string(ll_endchar) +"~r~n"

end event

type cb_12 from commandbutton within w_test
integer x = 1202
integer y = 2088
integer width = 617
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ShowHeadFoot(false)"
end type

event clicked;integer li_rtn
long ll_startline,ll_startchar,ll_endline,ll_endchar
band lb_band

setnull(lb_Band)
			ll_startline = 0 
			ll_startchar = 0 	
			ll_endline = 0 
			ll_endchar = 0 

			li_rtn = 0 
			li_rtn = dw_1.ShowHeadFoot(false)
			lb_Band = dw_1.position( ll_startline, ll_startchar, ll_endline, ll_endchar)
			//mle_1.text+= "dw_1.ShowHeadFoot(false):" + string(lb_band) + string(ll_startline)+ string(ll_startchar)+ string(ll_endline)+ string(ll_endchar) +"~r~n"
			mle_1.text+= "dw_1.ShowHeadFoot(false):" + string(lb_band) +"," + string(ll_startline)+"," + string(ll_startchar)+"," + string(ll_endline)+"," + string(ll_endchar) +"~r~n"
end event

type cb_11 from commandbutton within w_test
integer x = 1225
integer y = 2228
integer width = 722
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ShowHeadFoot(true,true)"
end type

event clicked;integer li_rtn
long ll_startline,ll_startchar,ll_endline,ll_endchar
band lb_band

setnull(lb_Band)
			ll_startline = 0 
			ll_startchar = 0 	
			ll_endline = 0 
			ll_endchar = 0 

			li_rtn = 0 
			li_rtn = dw_1.ShowHeadFoot(true,true)
			lb_Band = dw_1.position( ll_startline, ll_startchar, ll_endline, ll_endchar)
			//mle_1.text+= "dw_1.ShowHeadFoot(true,true):" + string(lb_band) + string(ll_startline)+ string(ll_startchar)+ string(ll_endline)+ string(ll_endchar) +"~r~n"
			
			mle_1.text+= "dw_1.ShowHeadFoot(true,true):" + string(lb_band) +"," + string(ll_startline)+"," + string(ll_startchar)+"," + string(ll_endline)+"," + string(ll_endchar) +"~r~n"
end event

type cb_10 from commandbutton within w_test
integer x = 1189
integer y = 1936
integer width = 599
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ShowHeadFoot(true)"
end type

event clicked;integer li_rtn
long ll_startline,ll_startchar,ll_endline,ll_endchar
band lb_band

setnull(lb_Band)
			ll_startline = 0 
			ll_startchar = 0 	
			ll_endline = 0 
			ll_endchar = 0 

			li_rtn = 0 
			li_rtn = dw_1.ShowHeadFoot(true)
			lb_Band = dw_1.position( ll_startline, ll_startchar, ll_endline, ll_endchar)
			//mle_1.text+= "dw_1.ShowHeadFoot(true):" + string(lb_band) + string(ll_startline)+ string(ll_startchar)+ string(ll_endline)+ string(ll_endchar) +"~r~n"
			mle_1.text+= "dw_1.ShowHeadFoot(true):" + string(lb_band) +"," + string(ll_startline)+"," + string(ll_startchar)+"," + string(ll_endline)+"," + string(ll_endchar) +"~r~n"
end event

type cb_9 from commandbutton within w_test
integer x = 626
integer y = 1944
integer width = 434
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "SelectTextLine"
end type

event clicked;
long ll_tmp
integer li_rtn
string ls_temp

ll_tmp = dw_1.SelectText( 10,1, 0,0, Detail!)			
li_rtn = dw_1.InsertDocument("C:\Application2017\test_rich\rtdwfuncspw03_rtf03_table.rtf",  true, FileTypeRichText!)
ls_temp = ""
Clipboard('')
//ll_tmp = dw_1.SelectText( 17,1,17,9999, Detail!)							//TE  picture row.
ll_tmp = dw_1.SelectText( 14,1,14,9999, Detail!)							//TX picture row.
ls_temp = dw_1.SelectedText( )
ll_tmp = dw_1.SelectTextLine()
dw_1.copy( )
//if not isnull(ll_tmp) and ll_tmp > 0 and not isnull(ls_temp) and ll_tmp  = len(ls_temp) + 1  then    //TE 判断条件
if not isnull(ll_tmp) and ll_tmp > 0 and not isnull(ls_temp) and ll_tmp  +1 = len(ls_temp)  then    //TX 判断条件
	messagebox ("", "Success!" )
else
	messagebox ("", "Fail!" )
end if 

end event

type cb_8 from commandbutton within w_test
integer x = 622
integer y = 2436
integer width = 466
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "SelectTextLine1"
end type

event clicked;integer li_rtn
//dw_1.SelectText( 17,1,17,9999, Detail!)   //TE
dw_1.SelectText( 14,1,14,9999, Detail!)       //TX
li_rtn=dw_1.SelectTextLine()
messagebox("test",li_rtn)
end event

type cb_7 from commandbutton within w_test
integer x = 626
integer y = 2300
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "SelectedText"
end type

event clicked;string ls_tmp


//dw_1.SelectText( 17,1,17,9999, Detail!)       //TE
dw_1.SelectText( 14,1,14,9999, Detail!)         //TX
//dw_1.SelectText( 12,1,14,9999, Detail!) 
 ls_tmp=dw_1.SelectedText( )
 messagebox("Test",len(ls_tmp))
end event

type cb_6 from commandbutton within w_test
integer x = 626
integer y = 2180
integer width = 466
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "InsertDocument"
end type

event clicked;dw_1.InsertDocument("C:\Application2017\test_rich\rtdwfuncspw03_rtf03_table.rtf",  true, FileTypeRichText!)

end event

type cb_5 from commandbutton within w_test
integer x = 626
integer y = 2060
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "selecttext1"
end type

event clicked;//dw_1.SelectText( 10,1, 0,0, Detail!)
dw_1.SelectText( 5,1, 5,999, Detail!)

end event

type cb_4 from commandbutton within w_test
integer x = 151
integer y = 2224
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "CLIP"
end type

event clicked;clipboard( "~r~n正阳软件是一家专门从事研发和营销企业级软件产品的公司，成立于美国硅谷，2001年12月在深圳建立研发中心。正阳软件在企业应用级软件的结构性变革中，一直占据技术上的领先地位，其申请的多项发明专利，解决了互联网软件的局限性，这些技术发明对企业开发与应用互联网软件产生深远的影响，也使正阳软件成为全球最早确认并解决了网络浏览器在访问企业软件方面局限性的公司。")

end event

type cb_3 from commandbutton within w_test
integer x = 151
integer y = 2364
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "paste1"
end type

event clicked;integer li_rtn
li_rtn=dw_1.paste()
MessageBox("test", string(li_rtn))
end event

type cb_2 from commandbutton within w_test
integer x = 151
integer y = 2092
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "selectheader"
end type

event clicked;//dw_1.SelectText(2,999, 0,0, Header!)
dw_1.SelectText(1,999, 0,0, detail!)
end event

type mle_1 from multilineedit within w_test
integer x = 2053
integer y = 1956
integer width = 1614
integer height = 620
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_test
integer x = 151
integer y = 1940
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "paste"
end type

event clicked;
string ls_temp
long ll_tmp,ll_preturn


//ls_temp = ''
//ll_tmp = dw_1.SelectText( 1,1, 2,999, Header!)			
//ls_temp = dw_1.selectedtext( )		
//if not isnull(ls_temp) and  ls_temp = "richtexttest1~nPage 1 of 2" then
//	messagebox("","Success!")
//else
//	messagebox("","Fail!")
//end if
//
//mle_1.text = ls_temp + "~r~n"

Clipboard('')
ll_tmp = dw_1.SelectText(2,999,0,0, header!)	
//ll_tmp = dw_1.SelectText(1,999,0,0, Detail!)	
ls_temp   = "~r~n正阳软件是一家专门从事研发和营销企业级软件产品的公司，成立于美国硅谷，2001年12月在深圳建立研发中心。正阳软件在企业应用级软件的结构性变革中，一直占据技术上的领先地位，其申请的多项发明专利，解决了互联网软件的局限性，这些技术发明对企业开发与应用互联网软件产生深远的影响，也使正阳软件成为全球最早确认并解决了网络浏览器在访问企业软件方面局限性的公司。"
//ls_temp = "sahFIDY"
Clipboard(ls_temp)
ll_preturn=dw_1.paste( )

MessageBox("test", string(ll_preturn))


end event

type dw_1 from datawindow within w_test
integer x = 41
integer y = 24
integer width = 3314
integer height = 1900
integer taborder = 10
string title = "none"
string dataobject = "d_richtext_datawindow1"
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

