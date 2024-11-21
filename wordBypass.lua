local UI = {}

UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["Name"] = [[WordBypasser]]
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 2
UI["2"]["BackgroundColor3"] = Color3.fromRGB(211, 211, 211)
UI["2"]["Size"] = UDim2.new(0, 387, 0, 221)
UI["2"]["Position"] = UDim2.new(0, 611, 0, 249)
UI["2"]["BorderColor3"] = Color3.fromRGB(151, 151, 151)
UI["2"]["Name"] = [[MainFrame]]

UI["3"] = Instance.new("Frame", UI["2"])
UI["3"]["BorderSizePixel"] = 2
UI["3"]["BackgroundColor3"] = Color3.fromRGB(234, 234, 234)
UI["3"]["Size"] = UDim2.new(0, 387, 0, 30)
UI["3"]["BorderColor3"] = Color3.fromRGB(151, 151, 151)
UI["3"]["Name"] = [[Title]]

UI["4"] = Instance.new("TextLabel", UI["3"])
UI["4"]["TextWrapped"] = true
UI["4"]["TextScaled"] = true
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["BackgroundTransparency"] = 1
UI["4"]["Size"] = UDim2.new(0, 387, 0, 21)
UI["4"]["Text"] = [[Word bypasser 😎]]
UI["4"]["Name"] = [[Title]]
UI["4"]["Position"] = UDim2.new(0, 0, 0, 4)

UI["5"] = Instance.new("Frame", UI["2"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["Size"] = UDim2.new(0, 100, 0, 41)
UI["5"]["Position"] = UDim2.new(0.36951, 0, 0.70136, 0)
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Name"] = [[SendButton]]

UI["6"] = Instance.new("TextLabel", UI["5"])
UI["6"]["TextWrapped"] = true
UI["6"]["BorderSizePixel"] = 0
UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["TextSize"] = 24
UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["BackgroundTransparency"] = 1
UI["6"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["Text"] = [[Send]]

UI["7"] = Instance.new("TextBox", UI["2"])
UI["7"]["CursorPosition"] = -1
UI["7"]["ClearTextOnFocus"] = false
UI["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["BorderSizePixel"] = 0
UI["7"]["TextWrapped"] = true
UI["7"]["TextSize"] = 35
UI["7"]["Name"] = [[Message]]
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["7"]["Size"] = UDim2.new(0, 348, 0, 88)
UI["7"]["Position"] = UDim2.new(0.05168, 0, 0.22624, 0)
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Text"] = [[]]

do
	local UserInputService = game:GetService("UserInputService")

	local guii = UI["2"]

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		guii.Position = UDim2.new(0, startPos.X.Offset + delta.X, 0, startPos.Y.Offset + delta.Y)
	
	end

	guii.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = guii.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	guii.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

function serializeTable(val, name, skipnewlines, depth)
	skipnewlines = skipnewlines or false
    depth = depth or 2

    local tmp = string.rep(" ", depth)
    if type(name) == "number" then
        name = "["..name.."]"
    end
    if name then tmp = tmp .. name .. " = " end

    if type(val) == "table" then
        tmp = tmp .. "{" .. (not skipnewlines and "\n" or "")

        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. "," .. (not skipnewlines and "\n" or "")
        end

        tmp = tmp .. string.rep(" ", depth) .. "}"
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif typeof(val) == "Vector3" then
        tmp = tmp .. "Vector3.new( " .. tostring( val ) .. ")"
    elseif typeof(val) == "Vector2" then
        tmp = tmp .. "Vector2.new( " .. tostring( val ) .. ")"
    elseif typeof(val) == "UDim2" then
        tmp = tmp .. "UDim2.new( " .. tostring( val ) .. ")"
    elseif typeof(val) == "UDim" then
        tmp = tmp .. "UDim.new( " .. tostring( val ) .. ")"
    elseif typeof(val) == "Instance" then
        tmp = tmp .. val:GetFullName()
    elseif typeof(val) == "Color3" then
        tmp = tmp .. "Color3.new( " .. val.R .. "," .. val.G .. "," .. val.B .. ")"
    else
        --tmp = tmp .. tostring(val)
        tmp = tmp .. "\"[inserializeable datatype:" .. type(val) .. "]\""
    end

    return tmp
end

function UI:OnClick(button, connected)
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            connected(input)
        end
    end)
end

function FindEvent(Name)
    local path = game:GetService("ReplicatedStorage")["RE"]
    local nameEdited = {}
    local tmp = ""
    for i = 1,#Name do
        if i == 1 then 
            tmp = Name:sub(i,i) 
        elseif i == #Name then 
            nameEdited[#nameEdited+1] = tmp
            nameEdited[#nameEdited+1] = Name:sub(#Name,#Name) 
        else
            local char = Name:sub(i,i)
            if string.upper(char) == char and #tmp>2 then
                nameEdited[#nameEdited+1] = tmp:sub(1,#tmp-1)
                tmp = tmp:sub(#tmp,#tmp) .. char
            else
                tmp = tmp .. char
            end
        end
    end
    local foundEvent
    for _,event in pairs(path:GetChildren()) do
        local access = true
        for _,name in pairs(nameEdited) do
            if not event.Name:find(name) or #event.Name > #Name+#nameEdited then
                access = false
                break;
            end
        end
        if access then
            foundEvent = event
            break
        end
    end
    return foundEvent
end

function StopAnim(Name,waitF)
    local waitF = waitF or false
    local found = false
    for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
        if v.Name == Name then
            found = true
            v:Stop()
        end
    end
    if waitF and not found then
        while not found do
            for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v.Name == Name then
                    found = true
                    v:Stop()
                end
            end
            wait()
        end
    end
end

function Chat(str)
    str = tostring(str)
    if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(str)
    else
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
    end
end

local plr = game:GetService("Players").LocalPlayer
local Cooldown = false
local lastCooldown = -1

UI:OnClick(UI["5"], function()
    local text = UI["7"].Text
    if text ~= "" and #text>1 and not Cooldown then
        local Sign = plr.Backpack:FindFirstChild("Sign")
        if not Sign then
            FindEvent("Tool"):InvokeServer("PickingTools", "Sign")
            Sign = plr.Backpack:WaitForChild("Sign")
        end
        Sign["ToolSound"]:FireServer("Sign", "SignWords", "le le le le le")
        wait(0.1)
        Chat(text)
        if lastCooldown == -1 then
            lastCooldown = tick()
            spawn(function()
                wait(17)
                Cooldown = true
                UI["6"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
                UI["6"]["Text"] = [[Cooldown...]]
                wait(5)
                UI["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
                UI["6"]["Text"] = [[Send]]
                Cooldown = false
		lastCooldown = -1
            end)
        end 
    end
end)

