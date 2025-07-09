local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Troll Menu",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Troll Menu",
   LoadingSubtitle = "by metrus93",
   ShowText = "", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Troll Menu"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Kill All",
   Callback = function()
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
          if player ~= game:GetService("Players").LocalPlayer and player.Character then
            local args = {
            "slash",
            player.Character,
            vector.create(0, -math.huge, 0)
         }
         game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
        end
    end
   end,
})

local Button = Tab:CreateButton({
   Name = "Torture All",
   Callback = function()
      while task.wait(0.1) do
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
          if player ~= game:GetService("Players").LocalPlayer and player.Character then
            local args = {
            "slash",
            player.Character,
            vector.create(0, -math.huge, 0)
         }
         game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
        end
      end
    end
   end,
})

local Button = Tab:CreateButton({
   Name = "Finish All",
   Callback = function()
         for _, player in pairs(game:GetService("Players"):GetPlayers()) do
         if player ~= game:GetService("Players").LocalPlayer and player.Character then
            local args = {
               "slash",
               player.Character,
               vector.create(0, -math.huge, 0)
            }
            game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
         end
      end
      wait(2.5)
      for _, player in pairs(game:GetService("Players"):GetPlayers()) do
      if player ~= game:GetService("Players").LocalPlayer and player.Character then
         local args = {
            "slash",
            player.Character,
            vector.create(0, 80, 0)
            }
            game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
         end
      end
      wait(1.5)
      for _, player in pairs(game:GetService("Players"):GetPlayers()) do
      if player ~= game:GetService("Players").LocalPlayer and player.Character then
           local args = {
               "slash",
               player.Character,
               vector.create(40, 5, 0)
            }
            game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
         end
      end
   end,
})

local Button = Tab:CreateButton({
   Name = "Super Slap",
   Callback = function()
        game.Players.LocalPlayer.Backpack.FreeSlap.Power.Value = 50
        game.Players.LocalPlayer.Backpack.FreeSlap.Speed.Value = 0.1
   end,
})

local Button = Tab:CreateButton({
   Name = "Killer Slap",
   Callback = function()
        game.Players.LocalPlayer.Backpack.FreeSlap.Power.Value = -1000000000000
        game.Players.LocalPlayer.Backpack.FreeSlap.Speed.Value = 0.1
   end,
})

local Section = Tab:CreateSection("Spectate")

local Keybind = Tab:CreateKeybind({
   Name = "Forward",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   local prey = game:GetService("Players").LocalPlayer.PlayerGui.Troll.Spectate.Player.Value

      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         game.Workspace.Camera.CFrame.LookVector * 10
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Troll",
   Callback = function()
   local prey = game:GetService("Players").LocalPlayer.PlayerGui.Troll.Spectate.Player.Value

      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(0, -10, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Kill",
   Callback = function()
   local prey = game:GetService("Players").LocalPlayer.PlayerGui.Troll.Spectate.Player.Value

      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(0, -math.huge, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Torture",
   Callback = function()
   local prey = game:GetService("Players").LocalPlayer.PlayerGui.Troll.Spectate.Player.Value
   while task.wait(0.1) do

      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(0, -math.huge, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   end
   end,
})

local Button = Tab:CreateButton({
   Name = "Fly",
   Callback = function()
   local prey = game:GetService("Players").LocalPlayer.PlayerGui.Troll.Spectate.Player.Value

      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(0, 10, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Finish",
   Callback = function()
   local prey = game:GetService("Players").LocalPlayer.PlayerGui.Troll.Spectate.Player.Value

      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(0, -math.huge, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   wait(2.5)
      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(0, 80, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   wait(1.5)
      local args = {
         "slash",
         game.Players:FindFirstChild(prey).Character,
         vector.create(40, 5, 0)
      }
      game:GetService("Players").LocalPlayer.Backpack:WaitForChild("FreeSlap"):WaitForChild("Event"):FireServer(unpack(args))
   end,
})
