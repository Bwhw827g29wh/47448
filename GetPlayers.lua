local G = {}
local Players = game:GetService("Players")
local plr = Players.LocalPlayer

function G:getPlayers(txt)
    -- Remove trailing spaces
    txt = txt:gsub("%s+$", "") -- This line removes trailing spaces from the string

    local tl = txt:lower()
    local found = {}

    if tl == "me" then
        table.insert(found, Players.LocalPlayer)
    elseif tl == "random" then
        local players = Players:GetPlayers()
        if #players > 0 then
            table.insert(found, players[math.random(1, #players)])
        end
    elseif tl == "others" then
        for _, v in pairs(Players:GetPlayers()) do
            if v ~= plr then table.insert(found, v) end
        end
    elseif tl == "all" then
        for _, v in pairs(Players:GetPlayers()) do
            table.insert(found, v)
        end
    elseif tl == "enemies" then
        for _, v in pairs(Players:GetPlayers()) do
            if v ~= plr and v.Team ~= plr.Team then table.insert(found, v) end
        end
    elseif tl == "team" then
        for _, v in pairs(Players:GetPlayers()) do
            if v.Team == plr.Team then table.insert(found, v) end
        end
    else
        for _, v in pairs(Players:GetPlayers()) do
            if v.Name:lower():match(tl) or v.DisplayName:lower():match(tl) then
                table.insert(found, v)
            end
        end
    end

    return found
end

return G
