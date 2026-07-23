
C_OBJECT:C1216($objForm)
C_LONGINT:C283($ref)

//テキストで記述されたフォームを取得します
$objForm:=JSON Parse:C1218(Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"Confirm.json"))

// Title および Subtitle のテキストを指定します
$objForm.pages[1].objects.title.text:=OBJECT Get pointer:C1124(Object named:K67:5; "varTitle")->
$objForm.pages[1].objects.subTitle.text:=OBJECT Get pointer:C1124(Object named:K67:5; "varSubTitle")->


$ref:=Open form window:C675($objForm; Plain form window:K39:10)
DIALOG:C40($objForm)
