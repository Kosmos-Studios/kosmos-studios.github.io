local library = loadstring(game:HttpGet("https://kosmos-studios.github.io/wallyv3.lua"))()

local window = library:CreateWindow("GG")

local folder = window:CreateFolder("Scripts")

folder:Button("Show Path",function()
    for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.CanCollide == true then
            v.Color = Color3.fromRGB(0, 0, 0)
            else
          
          v.Color = Color3.fromRGB(255, 255, 255)
            
            end
        end
        end
end)
