SELECT ( SELECT type1 AS 'type', gtype AS 'geometry.type', 
('[ ' + geocoordinateslat + ', ' +  geocoordinateslong + ' ]' ) 
AS 'geometry.coordinates' FROM TodoListItems 
FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
AS GeoJson