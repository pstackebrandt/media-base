-- Updates specificBuch entry identified by ID
-----------------------------------------------
-- Update the ID update the correct entry.

UPDATE [dbo].[Buch]
SET 
    [ID] = 1,                           -- Update ID
    [ISBN10] = '0123456789',           -- Update ISBN10
    [ISBN13] = '978-0123456789',       -- Update ISBN13
    [Autor] = N'Peter Mustermann',     -- Update Author name
    [Titel] = N'Updated Book Title',   -- Update Title
    [Verlag] = N'New Publisher',       -- Update Publisher
    [Seiten] = 350,                    -- Update Page count
    [Auflage] = 2,                     -- Update Edition
    [Sprache] = N'Deutsch',            -- Update Language
    [Hardcover] = 1,                   -- Update Hardcover (1=true, 0=false)
    [Erscheinungsjahr] = 2023,         -- Update Publication year
    [Bewertung] = 4,                   -- Update Rating
    [Beschreibung] = N'Updated description of the book.' -- Update Description
WHERE [ID] = 1;

-- Verify the update
SELECT * FROM [dbo].[Buch] WHERE [ID] = 1;