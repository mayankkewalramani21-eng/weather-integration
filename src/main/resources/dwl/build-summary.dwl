%dw 2.0
output application/json
---
{
		requestId : correlationId,
		submittedAt: now(),
		summary: {
			totalSubmitted: vars.TotalSize,
			successful: vars.SuccessCount,
			failed: vars.FailureCount,
			
	
		temperatureBreakDown: {
			Hot: vars.hotCount,
			Cold : vars.coldCount,
			normal: vars.normalCount
			
			}
		},
		failedCities: vars.failedCity,
		processedCity: vars.processedCity
}