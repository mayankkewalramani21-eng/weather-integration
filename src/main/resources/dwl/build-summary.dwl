%dw 2.0
output application/json
---
{
		requestId: correlationId,
		submittedAt: now() as String {format: "yyyy-MM-dd'T'HH:mm:ss.SS"},
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
		failedCities: flatten(vars.failedCity),
		processedCity: flatten(vars.processedCity)
}