SELECT (	
	SELECT type1 AS 'type', gtype AS 'geometry.type', JSON_QUERY(gcoordinates) AS 'geometry.coordinates' 
	FROM TodoListItems
	FOR JSON PATH, WITHOUT_ARRAY_WRAPPER )
AS GeoJson

