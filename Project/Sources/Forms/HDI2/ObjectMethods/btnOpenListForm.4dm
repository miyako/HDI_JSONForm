C_LONGINT:C283($ref)

var $json : Text
$json:=File:C1566(Localized document path:C1105("Person.json"); fk platform path:K87:2).getText()

START TRANSACTION:C239
JSON TO SELECTION:C1235([Person:2]; $json)
// リストボックスの標準アクションが使用する入力フォームを指定します。
FORM SET INPUT:C55([Person:2]; "/RESOURCES/InputForm.json")

// 新規のダイアログに出力フォームを表示します。出力フォームにはセレクションタイプのリストボックスが設置されています。
$ref:=Open form window:C675("/RESOURCES/outputForm.json"; Plain form window:K39:10)
DIALOG:C40("/RESOURCES/outputForm.json")
CANCEL TRANSACTION:C241