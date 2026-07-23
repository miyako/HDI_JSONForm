//%attributes = {"invisible":true}

var $objForm : Object

//テキストで記述されたフォームを取得します
$objForm:=JSON Parse:C1218(Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"HelloWorld.json"))

// フォームをサブフォームにロードします
OBJECT SET SUBFORM:C1138(*; "SubformHelloWorld"; $objForm)

OBJECT SET VISIBLE:C603(*; "info@"; True:C214)
