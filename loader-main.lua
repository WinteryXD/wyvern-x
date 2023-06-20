-- // Webhook Discord \\ --


HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1118298510249443369/eA-LgLo55kCdiHtDIPru9sGTOOqhhQR510TC_IIkY-t_G4YM3midP7kZ5w9N7_C9GStQ"


local response = request(
{
	Url = Webhook_URL,
	Method = 'POST',
	Headers = {
		['Content-Type'] = 'application/json'
	},
	Body = HttpService:JSONEncode({
		["content"] = "",
		["embeds"] = {{
			["title"] = "**Wyvern X (Premium) foi executado.**",
			["description"] = game.Players.LocalPlayer.Name .. " executou o script.",
			["type"] = "rich",
			["color"] =  tonumber(0xffffff),
			["fields"] = {
				{
					["name"] = "ID do Hardware",
					["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
					["inline"] = true
				}
			}
	}}
})
}
)
