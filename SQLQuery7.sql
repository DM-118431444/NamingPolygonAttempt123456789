SELECT ( SELECT type1, gtype, 
CONCAT(geocoordinateslat + ' ' + geocoordinateslong) AS 'coordinates'
FROM TodoListItems 
FOR JSON PATH)
AS GeoJson