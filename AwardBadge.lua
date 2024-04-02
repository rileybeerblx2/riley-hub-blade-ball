local BadgeService = game:GetService("BadgeService")
local badgeID = Your Badge ID Here!

game.Players.PlayerAdded:Connect(function(player)
    local playerUserId = player.UserId
    BadgeService:AwardBadge(playerUserId, The Badge Id Here)
end)
