DROP TABLE IF EXISTS dbo.TodoListItems;
GO

CREATE TABLE TodoListItems
( id int IDENTITY (1,1),
GeomCol1 geometry,
GeomCol2 AS GeomCol1.STAsText() );
GO