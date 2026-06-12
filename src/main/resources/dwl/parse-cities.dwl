%dw 2.0
output application/json
---
(payload splitBy ",")
	map( trim($))
	filter($ != "")