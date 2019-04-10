print('==================================================')
-- 配置文件更改时重新加载
require "reload.reload" 
-- 自定义快捷键
require "hotkey.hotkey" 
-- USB 设备连接记录  记录插上你电脑的每一个 USB 设备信息,凡插过必留记录。
require "usb.usb" 
-- Wi-Fi 自动脚本  根据 Wi-Fi SSID 判断是否在公司还是在家,例如在家里自动挂载 NAS 服务器,如果在公司 sshfs 挂载服务器目录等。
require "wifi.wifi"
-- 窗口管理  快捷键实现二分屏、三分屏和全屏
require "window.window"
-- 剪切板历史记录  记录剪贴板历史,点击某一项再重新复制。
require "clipboard.clipboard"
-- 音量调节快捷键  当我使用外接键盘时,自定义快捷键 cmd + up/down 调节系统音量
require "volume.volume" 
-- 菜单栏显示最近几天天气情况  请求免费的天气 API,在深圳这个多雨的城市里提醒我别忘记带伞。
require "weather.weather"
-- 蓝牙耳机自动连接  电脑锁屏时,自动断开连接的蓝牙耳机
require "headphone.headphone"
-- 消息推送  推送任意消息提醒
require "speaker.speaker"
-- 输入法自动切换
require "keylayout.keylayout"

-- require "statuslets.statuslets"

-- Private use
if (hs.host.localizedName() == '洪文龙的MacBook Pro') then
	-- 定时自动任务  使用 hs.timer 定时器
	require("autoscript.autoscript")
end
