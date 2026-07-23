//%attributes = {"invisible":true}
Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		initHDI
		OBJECT Get pointer:C1124(Object named:K67:5; "varTxt")->:=TextTabControl{TabControl}
		
	: (Form event code:C388=On Page Change:K2:54)
		
		OBJECT Get pointer:C1124(Object named:K67:5; "varTxt")->:=TextTabControl{TabControl}
		OBJECT Get pointer:C1124(Object named:K67:5; "varFormDescription")->:=TextJSONForm{TabControl}
		
		
		If (FORM Get current page:C276=3)  //Info
			OBJECT Get pointer:C1124(Object named:K67:5; "varTitle")->:=Localized string("HDI2_InfoTitle")
			OBJECT Get pointer:C1124(Object named:K67:5; "varSubTitle")->:=Localized string("HDI2_InfoSubTitle")
		End if 
		
		If ((FORM Get current page:C276>1) & (FORM Get current page:C276<4))
			OBJECT SET VISIBLE:C603(*; "varFormDescription"; True:C214)
		Else 
			OBJECT SET VISIBLE:C603(*; "varFormDescription"; False:C215)
		End if 
		
		
End case 