select SafetyStockLevel, ReorderPoint, Name, Color
from Production.Product
where (SafetyStockLevel = 1000 and Name like '%race%') or (ReorderPoint in(375,600) and color like 's%');
