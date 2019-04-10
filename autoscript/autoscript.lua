local cmdArr = {
    "cd /Users/hongwenlong/sh/ && ./up.sh"
}

function shell(cmd)
    result = hs.osascript.applescript(string.format('do shell script "%s"', cmd))
end

function runAutoScripts()
    for key, cmd in ipairs(cmdArr) do
        shell(cmd)
    end
end


timer = hs.timer.new(3600, runAutoScripts)
timer:start()