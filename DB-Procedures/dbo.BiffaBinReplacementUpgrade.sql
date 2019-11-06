USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[BiffaBinReplacementUpgrade]    Script Date: 06/11/2019 11:00:42 ******/
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
@BinSize varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @BinSize is NULL or @BinSize = ''
	BEGIN
	SELECT Address as Address, ReasonApplication as reasonApp, BinSize as binSize, Reference as Reference
	FROM BinReplacementUpgrade
	WHERE BinDelivered is NULL AND (CustomerQualifies = 'yes' or BinSize != '') 
	ORDER BY Postcode
	END

	IF @BinSize != ''
	BEGIN
	SELECT Address as Address, ReasonApplication as reasonApp, BinSize as binSize, Reference as Reference
	FROM BinReplacementUpgrade
	WHERE BinDelivered is NULL AND (CustomerQualifies = 'yes' or BinSize != '') AND CHARINDEX(BinSize,@BinSize) <> 0
	ORDER BY Postcode
	END


	

END

GO

