$PBExportHeader$richtext.sra
$PBExportComments$Generated Application Object
forward
global type richtext from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type richtext from application
string appname = "richtext"
string themepath = "C:\Program Files (x86)\Appeon\Shared\PowerBuilder\theme190"
string themename = "Flat Design Silver"
boolean nativepdfvalid = true
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 3
long richtexteditversion = 2
string richtexteditkey = "TP-8304842322"
string appicon = ""
end type
global richtext richtext

on richtext.create
appname="richtext"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on richtext.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile appeontestcase
//SQLCA.DBMS = "OLE DB"
//SQLCA.LogPass = "admin"
//SQLCA.LogId = "sa"
//SQLCA.AutoCommit = False
//SQLCA.DBParm = "PROVIDER='SQLOLEDB',DATASOURCE='172.16.2.254',PROVIDERSTRING='database=appeontestcase'"

// Profile appeontestcase
SQLCA.DBMS = "SNC SQL Native Client(OLE DB)"
SQLCA.LogPass ="admin"
SQLCA.ServerName = "172.16.2.254"
SQLCA.LogId = "sa"
SQLCA.AutoCommit = False
SQLCA.DBParm = "Database='appeontestcase',Provider='SQLNCLI11'"


connect;

open(w_mdi)
end event

event close;disconnect;


end event

