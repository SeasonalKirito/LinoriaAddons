--[[

    This is a Custom addon to LinoriaLib's Addons, this was made by _seasonal_.
                              (This took so long)

                           (I know my code is bad 😞)
]]--

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local InputService = game:GetService("UserInputService")
local RenderStepped = game:GetService("RunService").RenderStepped

local Engine = {
	Functions = {},
	Self = nil,
	Console = nil -- Easily access the console
}

function Engine.Functions.MakeDraggable(Instance, Cutoff)
    Instance.Active = true;

    Instance.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            local ObjPos = Vector2.new(
                Mouse.X - Instance.AbsolutePosition.X,
                Mouse.Y - Instance.AbsolutePosition.Y
            );

            if ObjPos.Y > (Cutoff or 40) then
                return;
            end;

            while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                Instance.Position = UDim2.new(
                    0,
                    Mouse.X - ObjPos.X + (Instance.Size.X.Offset * Instance.AnchorPoint.X),
                    0,
                    Mouse.Y - ObjPos.Y + (Instance.Size.Y.Offset * Instance.AnchorPoint.Y)
                );

                RenderStepped:Wait();
            end;
        end;
    end)
end;

function Engine.Functions.Init(...)
	local args = {...}
	local params = args[1]
	local title = params.title or "Default Title"
	local description = params.description or "Default Description"
	local callback = params.callback or function() end

	local KeySystem = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	local Root = Instance.new("Frame", KeySystem);
	local Frame_1 = Instance.new("Frame", Root);
	local Title = Instance.new("TextLabel", Frame_1);
	local UIStroke = Instance.new("UIStroke", Title);
	local Frame_2 = Instance.new("Frame", Frame_1);
	local Frame_3 = Instance.new("Frame", Frame_2);
	local TabHolder = Instance.new("Frame", Frame_3);
	local InteractionHolder = Instance.new("Frame", TabHolder);
	local Frame_4 = Instance.new("Frame", InteractionHolder);
	local Frame_5 = Instance.new("Frame", Frame_4);
	local InteractionTitle = Instance.new("TextLabel", Frame_4);
	local UIStroke_2 = Instance.new("UIStroke", InteractionTitle);
	local Frame_6 = Instance.new("Frame", Frame_4);
	local Frame_7 = Instance.new("Frame", Frame_6);
	local Input = Instance.new("Frame", InteractionHolder);
	local Frame_8 = Instance.new("Frame", Input);
	local UIGradient = Instance.new("UIGradient", Frame_8);
	local Frame_9 = Instance.new("Frame", Frame_8);
	local InputKey = Instance.new("TextBox", Frame_9);
	local UIStroke_3 = Instance.new("UIStroke", InputKey);
	local Check = Instance.new("Frame", InteractionHolder);
	local Frame_10 = Instance.new("Frame", Check);
	local CheckText = Instance.new("TextButton", Frame_10);
	local UIStroke_4 = Instance.new("UIStroke", CheckText);
	local UIGradient_2 = Instance.new("UIGradient", Frame_10);
	local Exit = Instance.new("Frame", InteractionHolder);
	local Frame_12 = Instance.new("Frame", Exit);
	local CheckText_3 = Instance.new("TextLabel", Frame_12);
	local UIStroke_6 = Instance.new("UIStroke", CheckText_3);
	local UIGradient_4 = Instance.new("UIGradient", Frame_12);
	local Frame_13 = Instance.new("Frame", Exit);
	local ExitText = Instance.new("TextButton", Frame_13);
	local UIStroke_7 = Instance.new("UIStroke", ExitText);
	local UIGradient_5 = Instance.new("UIGradient", Frame_13);
	local Description = Instance.new("TextLabel", InteractionHolder);
	local UIStroke_8 = Instance.new("UIStroke", Description);
	local UIListLayout = Instance.new("UIListLayout", Description);
	local Console = Instance.new("Frame", TabHolder);
	local Frame_14 = Instance.new("Frame", Console);
	local Frame_15 = Instance.new("Frame", Frame_14);
	local ConsoleTitle = Instance.new("TextLabel", Frame_14);
	local UIStroke_9 = Instance.new("UIStroke", ConsoleTitle);
	local Frame_16 = Instance.new("Frame", Frame_14);
	local Frame_17 = Instance.new("Frame", Frame_16);
	local TextHolder = Instance.new("Frame", Console);
	local Frame_18 = Instance.new("Frame", TextHolder);
	local UIGradient_6 = Instance.new("UIGradient", Frame_18);
	local ScrollingFrame = Instance.new("ScrollingFrame", Frame_18);
	local UIListLayout_2 = Instance.new("UIListLayout", ScrollingFrame);

	Engine.Self = KeySystem
	Engine.Console = Console


    Engine.Functions.MakeDraggable(Root, 25)


	KeySystem["Name"] = [[KeySystem]];
	KeySystem["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	Root["Active"] = true;
	Root["BorderSizePixel"] = 0;
	Root["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	Root["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Root["Size"] = UDim2.new(0, 550, 0, 204);
	Root["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Root["Name"] = [[Root]];

	Frame_1["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	Frame_1["BorderMode"] = Enum.BorderMode.Inset;
	Frame_1["Size"] = UDim2.new(1, -2, 1, -2);
	Frame_1["Position"] = UDim2.new(0, 1, 0, 1);
	Frame_1["BorderColor3"] = Color3.fromRGB(0, 86, 255);

	Title["TextXAlignment"] = Enum.TextXAlignment.Left;
	Title["TextSize"] = 16;
	Title["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Title["BackgroundTransparency"] = 1;
	Title["Size"] = UDim2.new(0, 0, 0, 25);
	Title["Text"] = title;
	Title["Position"] = UDim2.new(0, 7, 0, 0);

	UIStroke["LineJoinMode"] = Enum.LineJoinMode.Miter;

	Frame_2["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	Frame_2["Size"] = UDim2.new(1, -16, 1, -33);
	Frame_2["Position"] = UDim2.new(0, 8, 0, 25);
	Frame_2["BorderColor3"] = Color3.fromRGB(51, 51, 51);

	Frame_3["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	Frame_3["BorderMode"] = Enum.BorderMode.Inset;
	Frame_3["Size"] = UDim2.new(1, 0, 1, 0);
	Frame_3["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	TabHolder["ZIndex"] = 2;
	TabHolder["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	TabHolder["Size"] = UDim2.new(0.99463, -16, 1.12577, -38);
	TabHolder["Position"] = UDim2.new(0, 10, 0, 9);
	TabHolder["BorderColor3"] = Color3.fromRGB(51, 51, 51);
	TabHolder["Name"] = [[TabHolder]];

	InteractionHolder["ZIndex"] = 2;
	InteractionHolder["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	InteractionHolder["BorderMode"] = Enum.BorderMode.Inset;
	InteractionHolder["Size"] = UDim2.new(0.57812, 0, -1.67705, 382);
	InteractionHolder["Position"] = UDim2.new(0.01394, 0, 0.04709, 0);
	InteractionHolder["BorderColor3"] = Color3.fromRGB(51, 51, 51);
	InteractionHolder["Name"] = [[InteractionHolder]];

	Frame_4["ZIndex"] = 4;
	Frame_4["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	Frame_4["Size"] = UDim2.new(0.99405, -2, 1.00011, -2);
	Frame_4["Position"] = UDim2.new(0.00677, 0, 0.01479, 0);
	Frame_4["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	Frame_5["ZIndex"] = 5;
	Frame_5["BorderSizePixel"] = 0;
	Frame_5["BackgroundColor3"] = Color3.fromRGB(0, 86, 255);
	Frame_5["Size"] = UDim2.new(1, 0, 0, 2);

	InteractionTitle["ZIndex"] = 5;
	InteractionTitle["TextXAlignment"] = Enum.TextXAlignment.Left;
	InteractionTitle["TextSize"] = 14;
	InteractionTitle["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	InteractionTitle["TextColor3"] = Color3.fromRGB(255, 255, 255);
	InteractionTitle["BackgroundTransparency"] = 1;
	InteractionTitle["Size"] = UDim2.new(1, 0, 0, 18);
	InteractionTitle["Text"] = [[System]];
	InteractionTitle["Position"] = UDim2.new(0, 4, 0, 2);

	UIStroke_2["LineJoinMode"] = Enum.LineJoinMode.Miter;

	Frame_6["Size"] = UDim2.new(1, -4, 0.18857, -20);
	Frame_6["Position"] = UDim2.new(0, 4, 0, 20);
	Frame_6["BackgroundTransparency"] = 1;

	Frame_7["Size"] = UDim2.new(1, 0, 0, 3);
	Frame_7["BackgroundTransparency"] = 1;

	Input["ZIndex"] = 5;
	Input["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	Input["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Input["Size"] = UDim2.new(0.95631, -4, 0, 20);
	Input["Position"] = UDim2.new(0.49835, 0, 0.32004, 0);
	Input["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Input["Name"] = [[Input]];

	Frame_8["ZIndex"] = 6;
	Frame_8["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	Frame_8["BorderMode"] = Enum.BorderMode.Inset;
	Frame_8["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Frame_8["Size"] = UDim2.new(1.01452, -4, 0, 20);
	Frame_8["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Frame_8["BorderColor3"] = Color3.fromRGB(51, 51, 51);

	UIGradient["Rotation"] = 90;
	UIGradient["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(213, 213, 213))};

	Frame_9["ZIndex"] = 7;
	Frame_9["ClipsDescendants"] = true;
	Frame_9["Size"] = UDim2.new(1, -5, 1, 0);
	Frame_9["Position"] = UDim2.new(0, 5, 0, 0);
	Frame_9["BackgroundTransparency"] = 1;

	InputKey["TextColor3"] = Color3.fromRGB(255, 255, 255);
	InputKey["PlaceholderColor3"] = Color3.fromRGB(191, 191, 191);
	InputKey["ZIndex"] = 7;
	InputKey["TextXAlignment"] = Enum.TextXAlignment.Left;
	InputKey["TextSize"] = 14;
	InputKey["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	InputKey["PlaceholderText"] = [[Input Key]];
	InputKey["Size"] = UDim2.new(5, 0, 1, 0);
	InputKey["Position"] = UDim2.new(0, 2, 0, 0);
	InputKey["Text"] = [[]];
	InputKey["BackgroundTransparency"] = 1;

	UIStroke_3["LineJoinMode"] = Enum.LineJoinMode.Miter;

	Check["ZIndex"] = 5;
	Check["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	Check["Size"] = UDim2.new(0, 176, 0, 20);
	Check["Position"] = UDim2.new(0.01992, 3, 0.43655, 0);
	Check["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Check["Name"] = [[Check]];

	Frame_10["ZIndex"] = 6;
	Frame_10["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	Frame_10["BorderMode"] = Enum.BorderMode.Inset;
	Frame_10["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Frame_10["Size"] = UDim2.new(1, 0, 1, 0);
	Frame_10["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Frame_10["BorderColor3"] = Color3.fromRGB(51, 51, 51);

	CheckText["ZIndex"] = 6;
	CheckText["TextSize"] = 14;
	CheckText["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	CheckText["TextColor3"] = Color3.fromRGB(255, 255, 255);
	CheckText["BackgroundTransparency"] = 1;
	CheckText["AnchorPoint"] = Vector2.new(0.5, 0.5);
	CheckText["Size"] = UDim2.new(1, 0, 1, 0);
	CheckText["Text"] = [[Check]];
	CheckText["Position"] = UDim2.new(0.5, 0, 0.5, 0);



	CheckText.MouseEnter:Connect(function()
		Check["BorderColor3"] = Color3.fromRGB(0,85,255)
	end)
	CheckText.MouseLeave:Connect(function()
		Check["BorderColor3"] = Color3.fromRGB(0,0,0)
	end)



	UIStroke_4["LineJoinMode"] = Enum.LineJoinMode.Miter;

	UIGradient_2["Rotation"] = 90;
	UIGradient_2["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(213, 213, 213))};

	Exit["ZIndex"] = 5;
	Exit["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	Exit["Size"] = UDim2.new(0, -91, 0, 20);
	Exit["Position"] = UDim2.new(0.95629, 3, 0.43935, 0);
	Exit["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Exit["Name"] = [[Exit]];

	Frame_12["ZIndex"] = 6;
	Frame_12["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	Frame_12["BorderMode"] = Enum.BorderMode.Inset;
	Frame_12["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Frame_12["Size"] = UDim2.new(1, 0, 1, 0);
	Frame_12["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Frame_12["BorderColor3"] = Color3.fromRGB(51, 51, 51);

	CheckText_3["ZIndex"] = 6;
	CheckText_3["TextSize"] = 14;
	CheckText_3["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	CheckText_3["TextColor3"] = Color3.fromRGB(255, 255, 255);
	CheckText_3["BackgroundTransparency"] = 1;
	CheckText_3["AnchorPoint"] = Vector2.new(0.5, 0.5);
	CheckText_3["Size"] = UDim2.new(1, 0, 1, 0);
	CheckText_3["Text"] = [[Check]];
	CheckText_3["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	UIStroke_6["LineJoinMode"] = Enum.LineJoinMode.Miter;

	UIGradient_4["Rotation"] = 90;
	UIGradient_4["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(213, 213, 213))};

	Frame_13["ZIndex"] = 6;
	Frame_13["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	Frame_13["BorderMode"] = Enum.BorderMode.Inset;
	Frame_13["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Frame_13["Size"] = UDim2.new(1, 0, 1, 0);
	Frame_13["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Frame_13["BorderColor3"] = Color3.fromRGB(51, 51, 51);

	ExitText["ZIndex"] = 6;
	ExitText["TextSize"] = 14;
	ExitText["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	ExitText["TextColor3"] = Color3.fromRGB(255, 255, 255);
	ExitText["BackgroundTransparency"] = 1;
	ExitText["AnchorPoint"] = Vector2.new(0.5, 0.5);
	ExitText["Size"] = UDim2.new(1, 0, 1, 0);
	ExitText["Text"] = [[Exit]];
	ExitText["Position"] = UDim2.new(0.5, 0, 0.5, 0);



	ExitText.MouseEnter:Connect(function()
		Exit["BorderColor3"] = Color3.fromRGB(0,85,255)
	end)
	ExitText.MouseLeave:Connect(function()
		Exit["BorderColor3"] = Color3.fromRGB(0,0,0)
	end)



	UIStroke_7["LineJoinMode"] = Enum.LineJoinMode.Miter;

	UIGradient_5["Rotation"] = 90;
	UIGradient_5["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(213, 213, 213))};

	Description["TextWrapped"] = true;
	Description["ZIndex"] = 5;
	Description["TextXAlignment"] = Enum.TextXAlignment.Left;
	Description["TextYAlignment"] = Enum.TextYAlignment.Top;
	Description["TextSize"] = 14;
	Description["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Description["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Description["BackgroundTransparency"] = 1;
	Description["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Description["Size"] = UDim2.new(0.92741, -4, 0.23308, 15);
	Description["Text"] = description;
	Description["Name"] = [[Description]];
	Description["Position"] = UDim2.new(0.49998, 0, 0.82096, 0);

	UIStroke_8["LineJoinMode"] = Enum.LineJoinMode.Miter;

	UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	UIListLayout["Padding"] = UDim.new(0, 4);
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder;
	UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal;

	Console["ZIndex"] = 2;
	Console["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	Console["BorderMode"] = Enum.BorderMode.Inset;
	Console["Size"] = UDim2.new(-0.37835, 0, -1.67705, 382);
	Console["Position"] = UDim2.new(0.98612, 0, 0.04709, 0);
	Console["BorderColor3"] = Color3.fromRGB(51, 51, 51);
	Console["Name"] = [[Console]];

	Frame_14["ZIndex"] = 4;
	Frame_14["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	Frame_14["Size"] = UDim2.new(0.99405, -2, 1.00011, -2);
	Frame_14["Position"] = UDim2.new(0.00677, 0, 0.01479, 0);
	Frame_14["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	Frame_15["ZIndex"] = 5;
	Frame_15["BorderSizePixel"] = 0;
	Frame_15["BackgroundColor3"] = Color3.fromRGB(0, 86, 255);
	Frame_15["Size"] = UDim2.new(1, 0, 0, 2);

	ConsoleTitle["ZIndex"] = 5;
	ConsoleTitle["TextXAlignment"] = Enum.TextXAlignment.Left;
	ConsoleTitle["TextSize"] = 14;
	ConsoleTitle["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	ConsoleTitle["TextColor3"] = Color3.fromRGB(255, 255, 255);
	ConsoleTitle["BackgroundTransparency"] = 1;
	ConsoleTitle["Size"] = UDim2.new(1, 0, 0, 18);
	ConsoleTitle["Text"] = [[Console]];
	ConsoleTitle["Position"] = UDim2.new(0, 4, 0, 2);

	UIStroke_9["LineJoinMode"] = Enum.LineJoinMode.Miter;

	Frame_16["Size"] = UDim2.new(1, -4, 0.18857, -20);
	Frame_16["Position"] = UDim2.new(0, 4, 0, 20);
	Frame_16["BackgroundTransparency"] = 1;

	Frame_17["Size"] = UDim2.new(1, 0, 0, 3);
	Frame_17["BackgroundTransparency"] = 1;

	TextHolder["ZIndex"] = 5;
	TextHolder["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	TextHolder["AnchorPoint"] = Vector2.new(0.5, 0.5);
	TextHolder["Size"] = UDim2.new(0, -180, 0, 105);
	TextHolder["Position"] = UDim2.new(0.5, 0, 0.57, 0);
	TextHolder["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	TextHolder["Name"] = [[TextHolder]];

	Frame_18["ZIndex"] = 6;
	Frame_18["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
	Frame_18["BorderMode"] = Enum.BorderMode.Inset;
	Frame_18["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Frame_18["Size"] = UDim2.new(1, 0, 1, 0);
	Frame_18["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Frame_18["BorderColor3"] = Color3.fromRGB(51, 51, 51);

	UIGradient_6["Rotation"] = 90;
	UIGradient_6["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(213, 213, 213))};

	ScrollingFrame["Active"] = true;
	ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y;
	ScrollingFrame["BorderSizePixel"] = 0;
	ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	ScrollingFrame["AnchorPoint"] = Vector2.new(0.5, 0.5);
	ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
	ScrollingFrame["Size"] = UDim2.new(1, 0, 1, 0);
	ScrollingFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 86, 255);
	ScrollingFrame["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	ScrollingFrame["ScrollBarThickness"] = 5;
	ScrollingFrame["BackgroundTransparency"] = 1;

	UIListLayout_2["SortOrder"] = Enum.SortOrder.LayoutOrder;

	CheckText.Activated:Connect(function()
		callback(InputKey.Text)
	end)
	ExitText.Activated:Connect(function()
		Engine.Functions.Unload()
	end)

	return KeySystem
end

function Engine.Functions.Log(...)
	local args = {...}
	local params = args[1]
	local text = params.text or "Default Log"
	local color = params.color or Color3.fromRGB(255, 255, 255)

	local Root = Instance.new("TextLabel", Engine.Console.TextHolder.Frame.ScrollingFrame);
	local Root_UIStroke = Instance.new("UIStroke", Root);
	local Root_UIListLayout = Instance.new("UIListLayout", Root);
	local Root_UIPadding = Instance.new("UIPadding", Root);

	Root["TextWrapped"] = true;
	Root["ZIndex"] = 5;
	Root["TextXAlignment"] = Enum.TextXAlignment.Left;
	Root["TextYAlignment"] = Enum.TextYAlignment.Top;
	Root["TextSize"] = 12;
	Root["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Root["TextColor3"] = color;
	Root["BackgroundTransparency"] = 1;
	Root["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Root["Size"] = UDim2.new(1.028, -4, 0.041, 12);
	Root["Text"] = text;
	Root["Name"] = [[Log]];
	Root["Position"] = UDim2.new(0.50281, 0, 0.09311, 0);

	Root_UIStroke["LineJoinMode"] = Enum.LineJoinMode.Miter;

	Root_UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	Root_UIListLayout["Padding"] = UDim.new(0, 4);
	Root_UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder;
	Root_UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal;

	Root_UIPadding["PaddingTop"] = UDim.new(0, 3);
	Root_UIPadding["PaddingLeft"] = UDim.new(0, 5);
end

function Engine.Functions.Unload(...)
	local args = {...}
	local callback = args[1] or function() end
	callback()
	
	Engine.Self:Destroy() -- Destroy Self which is defined in the Engine Table
end

return Engine

--  Engine.Functions.Init({
--  	title = "Example Key System",
--  	description = "This is a Custom addon to LinoriaLib's Addons, this was made by _seasonal_.",
--  
--  	callback = function(Key)
--          Engine.Functions.Log({
--              text = "Key: " .. Key,
--              color = Color3.fromRGB(0, 153, 255)
--          })
--  		Engine.Functions.Unload(
--  			function()
--                  Engine.Functions.Log({text = "Unloading in 3 seconds", color = Color3.fromRGB(255, 0, 0)})
--                  task.wait(3)
--  			end
--  		)
--  	end
--  })
--  
--  Engine.Functions.Log({
--  	text = "This is a test",
--  	color = Color3.fromRGB(158, 117, 117)
--  })
