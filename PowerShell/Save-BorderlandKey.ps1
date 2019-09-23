Add-AzAccount

$CuentaAlmacenamiento = "jaimepc"

$GrupoRecurso = "Default-Web-CentralUS"

$NombreTabla = "Borderlands2Keys"

$contexto = (Get-AzStorageAccount -ResourceGroupName $GrupoRecurso -Name $CuentaAlmacenamiento).Context

$tabla = (Get-AzStorageTable -Name $NombreTabla -Context $contexto).CloudTable

<#
Add-AzTableRow -table $tabla -partitionKey "Borderlands" -rowKey ([guid]::NewGuid().toString()) -property @{"Key"="535T3-JR6ZH-6B3J3-3TJT3-T9JBK"}
Add-AzTableRow -table $tabla -partitionKey "Borderlands" -rowKey ([guid]::NewGuid().toString()) -property @{"Key"="WB5JJ-KX6HS-XBJBT-TBJJB-XW3S3"}
Add-AzTableRow -table $tabla -partitionKey "Borderlands" -rowKey ([guid]::NewGuid().toString()) -property @{"Key"="KJ53B-RRRSZ-F3TJJ-TJTT3-WBHT6"}
Add-AzTableRow -table $tabla -partitionKey "Borderlands" -rowKey ([guid]::NewGuid().toString()) -property @{"Key"="WTWJ3-TSXZS-FTJB3-3TTJJ-WBCT3"}
Add-AzTableRow -table $tabla -partitionKey "Borderlands" -rowKey ([guid]::NewGuid().toString()) -property @{"Key"="CJW3J-KHXZH-63TTJ-T3J33-R5HXK"}
Add-AzTableRow -table $tabla -partitionKey "Borderlands" -rowKey ([guid]::NewGuid().toString()) -property @{"Key"="W353B-9FXZZ-RBJ3J-BT3B3-JK9KH"}
#>
Get-AzTableRow -Table $tabla | ft

