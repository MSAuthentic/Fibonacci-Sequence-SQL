/****** Object:  UserDefinedFunction [dbo].[Fibonacci]    Script Date: 06/06/2022 08:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<MS>
-- Create date: <05/2022>
-- Description:	<Fibonacci Sequence Func>
-- =============================================
ALTER FUNCTION [dbo].[Fibonacci] 
(
	@i integer = 0
)
RETURNS int
AS
BEGIN
	DECLARE @return  int  = 0




	if @i = 0
	begin 
		set @return = 0
		return @return;
	end
	else if @i = 1
	begin
		set @return = 1
		return  @return;
	end
	else
	begin 
		set @return = ((SELECT [dbo].[Fibonacci] (@i -2)) +(SELECT [dbo].[Fibonacci] (@i -1)))
		return @return
	end
	return @return

END
