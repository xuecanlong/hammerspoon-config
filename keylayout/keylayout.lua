local function Chinese()
    hs.keycodes.currentSourceID("com.apple.inputmethod.SCIM.ITABC")
end

local function English()
    hs.keycodes.currentSourceID("com.apple.keylayout.US")
end

-- Handle cursor focus and application's screen manage.
function applicationWatcher(appName, eventType, appObject)
    print(appName)
    if (eventType == hs.application.watcher.activated) then
        if (appName == "iTerm2") then
            English()
        end
    end
end


appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()