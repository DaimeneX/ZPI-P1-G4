USE [Parkingowy]
GO
/****** Object:  StoredProcedure [dbo].[dbs_Parkingowy_SelectEkrany]    Script Date: 2022-05-16 19:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[dbs_Parkingowy_SelectEkrany]
AS
BEGIN
	SET NOCOUNT ON;

    	/* Obliczanie miejsc do Ekranów E1-E3 */

	DECLARE @E1 int DECLARE @E2 int DECLARE @E3 int

	SELECT
	@E1 = COUNT(CASE WHEN Miejsce_CzyZajete = 0 THEN 1 END),
	@E2 = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,1) = '0' THEN 1 END),
	@E3 = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,1) = '1' THEN 1 END)
	FROM Miejsca_Parkingowe
	
	
	DECLARE @S0A int DECLARE @S0B int DECLARE @S0C int DECLARE @S1A int DECLARE @S1B int DECLARE @S1C int

	SELECT 
	@S0A = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,2) = '0A' THEN 1 END),
	@S0B = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,2) = '0B' THEN 1 END),
	@S0C = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,2) = '0C' THEN 1 END),
	@S1A = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,2) = '1A' THEN 1 END),
	@S1B = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,2) = '1B' THEN 1 END),
	@S1C = COUNT(CASE WHEN Miejsce_CzyZajete = 0 AND LEFT(Miejsce_Id,2) = '1C' THEN 1 END)
	FROM Miejsca_Parkingowe

	/* Obliczanie miejsc do Lamp L01-L12 */

	DECLARE @L01 int DECLARE @L02 int DECLARE @L03 int DECLARE @L04 int DECLARE @L05 int
	DECLARE @L07 int DECLARE @L08 int DECLARE @L09 int DECLARE @L10 int DECLARE @L11 int
	DECLARE @L12 int DECLARE @L06 int

	/* L01 */

	SELECT @L01 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 09 AND 19

	/* L02 */

	SELECT @L02 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 08
				OR Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 20 AND 24

	/* L03 */

	SELECT @L03 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 24

	/* L04 */

	SELECT @L04 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0B'
				AND RIGHT(Miejsce_Id,2) BETWEEN 08 AND 19

	/* L05 */

	SELECT @L05 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0C'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 21

	/* L06 */

	SELECT @L06 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '0C'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 19

	/* L07 */

	SELECT @L07 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 09 AND 20

	/* L08 */

	SELECT @L08 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 08
				OR Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 21 AND 25

	/* L09 */

	SELECT @L09 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1A'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 25

	/* L10 */

	SELECT @L10 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1B'
				AND RIGHT(Miejsce_Id,2) BETWEEN 08 AND 19

	/* L11 */

	SELECT @L11 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1B'
				AND RIGHT(Miejsce_Id,2) BETWEEN 01 AND 04
				OR Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1B'
				AND RIGHT(Miejsce_Id,2) BETWEEN 23 AND 24

	/* L12 */

	SELECT @L12 = COUNT(Miejsce_CzyZajete) 
		   FROM Miejsca_Parkingowe
				WHERE Miejsce_CzyZajete = 0
				AND LEFT(Miejsce_Id,2) = '1C'
				AND RIGHT(Miejsce_Id,2) BETWEEN 05 AND 15

	SELECT
		  @E1 AS E01,
		  @E2 AS E02,
		  @E3 AS E03,
		  @L01 AS L01,
		  @L02 AS L02,
		  @L03 AS L03,
		  @L04 AS L04,
		  @L05 AS L05,
		  @L06 AS L06,
		  @L07 AS L07,
		  @L08 AS L08,
		  @L09 AS L09,
		  @L10 AS L10,
		  @L11 AS L11,
		  @L12 AS L12
END
