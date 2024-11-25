local G = {}

 function G:notify1(Title, Text, con, Duration, Button, F) -- Put your Lua here
    Title = Title or "GGH52Lan"
    Text = Text or "Text"
    Duration = Duration or 5
    Button = Button or "Button"
    F = F or function() end
    con = con or "rbxassetid://14260295451"
    N.OnInvoke = F
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = con;
        Duration = Duration;
        Button1 = Button;
        Callback = N;
    })
end

 function G:notify2(Title, Text, con, Duration, Button, B, F)
    Title = Title or "GGH52Lan"
    Text = Text or "Text"
    Duration = Duration or 5
    Button = Button or "Button"
    F = F or function() end
    con = con or "rbxassetid://14260295451"
    N.OnInvoke = F
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = con;
        Duration = Duration;
        Button1 = Button;
        Button2 = B;
        Callback = N;
    })
end

 function G:notify(Title, Text, con, Duration)
    Text = Text or "GGH52Lan"
    Title = Title or "GGH52Lan"
    con = con or "rbxassetid://14260295451"
    Duration = Duration or 5
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Duration = Duration;
        Icon = con;
    })
end

return G
