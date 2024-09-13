local c9api = {
    ["humanoidrootpart"] = function()
        return game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    end,
    ["humanoid"] = function() 
        return game:GetService("Players").LocalPlayer.Character.Humanoid
    end,
    ["tween"] = function(time, pos) -- tween to position by (time) + (cframe)
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() task.wait(time)
    end,
    ["walkTo"] = function(v3) -- walk to position (not pathfinding)
       game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(v3) 
    end,
    ["claimBooth"] = function() 
        game:GetService("ReplicatedStorage").Network["Booths_ClaimAnyBooth"]:InvokeServer()
    end,
}

return c9api
