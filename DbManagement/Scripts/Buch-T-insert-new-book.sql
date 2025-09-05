-- Insert new book: "Datenbankentwicklung lernen mit SQL Server 2022" by Robert Panther
-- Following training book approach with simplified values
INSERT INTO [dbo].[Buch] (
    [ID],
    [ISBN10],
    [ISBN13], 
    [Autor],
    [Titel],
    [Verlag],
    [Seiten],
    [Auflage],
    [Sprache],
    [Hardcover],
    [Erscheinungsjahr],
    [Bewertung],
    [Beschreibung]
)
VALUES (
    '3',                               -- ID
    '1',                               -- ISBN10 (simplified training value)
    '1',                               -- ISBN13 (simplified training value)
    N'Robert Panther',                 -- Autor
    N'Datenbankentwicklung lernen mit SQL Server 2022', -- Titel
    N'O''Reilly',                     -- Verlag
    572,                              -- Seiten
    3,                                -- Auflage
    N'Deutsch',                       -- Sprache
    0,                                -- Hardcover (0 = Softcover)
    2023,                             -- Erscheinungsjahr
    NULL,                             -- Bewertung
    N'Praxisorientierter Grundkurs für SQL Server Express' -- Beschreibung
);

-- Verify the insertion by selecting the newly added record
SELECT * FROM [dbo].[Buch] WHERE [Autor] = N'Robert Panther' AND [Titel] LIKE N'%Datenbankentwicklung%';
