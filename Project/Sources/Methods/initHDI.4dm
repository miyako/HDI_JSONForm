//%attributes = {"invisible":true}
var $json : Collection
$json:=JSON Parse:C1218(File:C1566(Localized document path:C1105("Samples.json"); fk platform path:K87:2).getText())
$json:=$json.orderBy("SampleSort asc")

ARRAY TEXT:C222(TabControl; 0)
ARRAY TEXT:C222(TextTabControl; 0)
ARRAY TEXT:C222(TextJSONForm; 0)

COLLECTION TO ARRAY:C1562($json; TabControl; "Title"; TextTabControl; "Text"; TextJSONForm; "DescriptionForm")

TabControl:=1