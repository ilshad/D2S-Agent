private
requestBody
	| data |
	data := Dictionary newFrom: {#secret->secret. #order->orderId. #units->ids }.
	^ NeoJSONWriter toString: data.
