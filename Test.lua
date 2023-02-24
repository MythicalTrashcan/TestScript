local Player = game.Players.LocalPlayer
local Humanoid = Player.Character.Humanoid
local RootPart = Humanoid.RootPart

game:GetService("RunService").RenderStepped:Connect(function ()
    Humanoid.Jumping:Connect(function(isJumping)
        if isJumping then
	        RootPart.Velocity = Vector3.new(RootPart.Velocity.X, Humanoid.JumpPower * 1.1, RootPart.Velocity.Z)
        end
    end)
end)
