USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[BiffaBinReplacementUpgrade]    Script Date: 03/10/2019 14:52:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Daniela Dutu
-- Create date: 06/08/2019
-- Description:	shows Biffa jobs for the day
-- =============================================
CREATE PROCEDURE [dbo].[BiffaBinReplacementUpgrade]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT Address as Address, ReasonApplication as reasonApp, BinSize as binSize, Reference as Reference
	FROM BinReplacementUpgrade
	WHERE BinDelivered is NULL AND (CustomerQualifies = 'yes' or BinSize != '')
	ORDER BY Postcode
	
	

END
GO

