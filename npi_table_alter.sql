-- creating the foreign key reference from npi_taxonomy table to the taxonomy_information table
IF OBJECT_id('dbo.FK_taxonomy_code_npi','F') IS NOT NULL
	ALTER TABLE dbo.npi_taxonomy
	DROP CONSTRAINT FK_taxonomy_code_npi
GO

ALTER TABLE npi_taxonomy
ADD CONSTRAINT FK_taxonomy_code_npi
FOREIGN KEY ([Healthcare Provider Taxonomy Code]) REFERENCES taxonomy_information(Code)
GO

-- creating the foreign key reference from npi_taxonomy table to the npi_information table
IF OBJECT_id('dbo.FK_npi_information_taxonomy','F') IS NOT NULL
	ALTER TABLE dbo.npi_taxonomy
	DROP CONSTRAINT FK_npi_information_taxonomy
GO

ALTER TABLE npi_taxonomy
ADD CONSTRAINT FK_npi_information_taxonomy
FOREIGN KEY (NPI) REFERENCES npi_information(NPI)
GO