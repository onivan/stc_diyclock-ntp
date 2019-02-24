pinDHT = 3
-- gpio.mode(2, gpio.OUTPUT)
-- gpio.write(2, gpio.HIGH)

local status,temp,humi,temp_decimal,humi_decimal
 
-- configure for 9600, 8N1, with echo
uart.setup(1, 57600, 8, uart.PARITY_NONE, uart.STOPBITS_1, 1)

uart.write(1, "Hello, world\n")

timestring = 0
uarttimestring = 0
uartDHTstring = 0
UTCTZ = 2
printOrder = rtc
rtcGood = 0

function UpdateRtc()
    tm = rtctime.epoch2cal(rtctime.get())
    tm["hour"] = tm["hour"]+UTCTZ
    if (tm["hour"] >= 24) then
      tm["hour"] = tm["hour"] - 24
    end
 
    timestring = string.format("%04d-%02d-%02d %02d:%02d:%02d", tm["year"], tm["mon"], tm["day"], tm["hour"], tm["min"], tm["sec"])
    uarttimestring = string.format("H%02dM%02dS%02d*\0\0", tm["hour"], tm["min"], tm["sec"])
    print(uarttimestring)
    
end

function UpdateDHT()
    status,temp,humi,temp_decimal,humi_decimal = dht.read(pinDHT)
    if (status == dht.OK) then
      uartDHTstring = string.format("W%02dT%02dU%02d*\0\0", humi, temp, 0)
      print(uartDHTstring)
    else
      -- print("DHT Failed")
    end
end


function PrintUart()
    if printOrder == rtc then
        if rtcGood == 1 then
            uart.write(1, uarttimestring)
        end
            
        UpdateRtc()
    end
    if printOrder == dht then
        uart.write(1, uartDHTstring)
        UpdateDHT()
        
    end

    if printOrder == rtc then 
        printOrder = dht 
      else
        printOrder = rtc 
      end
end

wifi.setmode(wifi.STATION)

--connect to Access Point (DO save config to flash)
station_cfg={}
station_cfg.ssid="🐱"
station_cfg.pwd="hotyn777"
station_cfg.auto=true
station_cfg.save=true
wifi.sta.config(station_cfg)
wifi.sta.setip({ip="192.168.1.102",netmask="255.255.255.0",gateway="192.168.1.1"})
print("ESP8266 mode is: " .. wifi.getmode())
print(wifi.sta.getip())
 
if srv then srv:close() srv=nil end
srv=net.createServer(net.TCP, 4)
print("Server created on " .. wifi.sta.getip())

function Set_gpio(gpio_name, val)
    --print(gpio_name.."="..val)
    
    local gpio_val = gpio.LOW
    if (val ~= "0") then gpio_val = gpio.HIGH; end
       
    if (gpio_name == "GPIO00") then gpio.mode(3, gpio.OUTPUT); gpio.write(3, gpio_val);
    elseif (gpio_name == "GPIO01") then gpio.mode(10, gpio.OUTPUT);  gpio.write(10, gpio_val);
    elseif (gpio_name == "GPIO02") then gpio.mode(4, gpio.OUTPUT);  gpio.write(4, gpio_val);
    elseif (gpio_name == "GPIO03") then gpio.mode(9, gpio.OUTPUT);  gpio.write(9, gpio_val);
    elseif (gpio_name == "GPIO04") then gpio.mode(2, gpio.OUTPUT);  gpio.write(2, gpio_val);
    elseif (gpio_name == "GPIO05") then gpio.mode(1, gpio.OUTPUT);  gpio.write(1, gpio_val);
    elseif (gpio_name == "GPIO09") then gpio.mode(11, gpio.OUTPUT);  gpio.write(11, gpio_val);
    elseif (gpio_name == "GPIO10") then gpio.mode(12, gpio.OUTPUT);  gpio.write(12, gpio_val);
    elseif (gpio_name == "GPIO12") then gpio.mode(6, gpio.OUTPUT);  gpio.write(6, gpio_val);
    elseif (gpio_name == "GPIO13") then gpio.mode(7, gpio.OUTPUT);  gpio.write(7, gpio_val);
    elseif (gpio_name == "GPIO14") then gpio.mode(5, gpio.OUTPUT);  gpio.write(5, gpio_val);
    elseif (gpio_name == "GPIO15") then gpio.mode(8, gpio.OUTPUT);  gpio.write(8, gpio_val);
    elseif (gpio_name == "GPIO16") then gpio.mode(0, gpio.OUTPUT);  gpio.write(0, gpio_val);
    end
end

function receiver(sck, request)

     -- print(request)
        local _, _, method, path, vars = string.find(request, "([A-Z]+) (.+)?(.+) HTTP");

        if (vars ~= nil)then
            for k, v in string.gmatch(vars, "(%w+)=(%w+)&*") do
                Set_gpio(k, v)
            end
        end

  local response = {}

    -- if you're sending back HTML over HTTP you'll want something like this instead
    -- local response = {"HTTP/1.0 200 OK\r\nServer: NodeMCU on ESP8266\r\nContent-Type: text/html\r\n\r\n"}
    response[#response + 1] = "HTTP/1.1 200 OK\r\n";
    response[#response + 1] = "Content-type: text/html\r\n";
    response[#response + 1] = "Connection: close\r\n\r\n";
    response[#response + 1] = "<html><head>";
    response[#response + 1] = '<title>Clock</title>';
    response[#response + 1] = '<meta http-equiv="refresh" content="5">';
    response[#response + 1] = "<style>";
    response[#response + 1] = 'body {width:100%; font-size:52px;}';
    response[#response + 1] = 'h1 {font-size:62px;}';
    response[#response + 1] = 'button {font-size:42px;height:4em;width:30%;}';
    response[#response + 1] = "</style>";
    response[#response + 1] = "</head><body>";
    response[#response + 1] = "<h1>Clock</h1>";
    response[#response + 1] = '<div class="container">';

    response[#response + 1] = "<p>Time RTC: ".. timestring .." </p>";
    
    local status,temp,humi,temp_decimal,humi_decimal = dht.read(pinDHT)
    if (status == dht.OK) then
         
        response[#response + 1] = "<p>Temperature: "..temp.." C</p>";
        response[#response + 1] = "<p>Humidity: "..humi.." %</p>";
    elseif (status == dht.ERROR_CHECKSUM) then
        response[#response + 1] = "<p>DHT Checksum error</p>";
    elseif (status == dht.ERROR_TIMEOUT) then
        response[#response + 1] = "<p>DHT Time out</p>";
    end

    --response[#response + 1] = "<p>GPIO00 <a href=\"?GPIO00=1\"><button>ON</button></a><a href=\"?GPIO00=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO01 <a href=\"?GPIO01=1\"><button>ON</button></a><a href=\"?GPIO01=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO02 <a href=\"?GPIO02=1\"><button>ON</button></a><a href=\"?GPIO02=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO03 <a href=\"?GPIO03=1\"><button>ON</button></a><a href=\"?GPIO03=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO04 <a href=\"?GPIO04=1\"><button>ON</button></a><a href=\"?GPIO04=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO05 <a href=\"?GPIO05=1\"><button>ON</button></a><a href=\"?GPIO05=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO09 <a href=\"?GPIO09=1\"><button>ON</button></a><a href=\"?GPIO09=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO10 <a href=\"?GPIO10=1\"><button>ON</button></a><a href=\"?GPIO10=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO12 <a href=\"?GPIO12=1\"><button>ON</button></a><a href=\"?GPIO12=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO13 <a href=\"?GPIO13=1\"><button>ON</button></a><a href=\"?GPIO13=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO14 <a href=\"?GPIO14=1\"><button>ON</button></a><a href=\"?GPIO14=0\"><button>OFF</button></a></p>";
    --response[#response + 1] = "<p>GPIO15 <a href=\"?GPIO15=1\"><button>ON</button></a><a href=\"?GPIO15=0\"><button>OFF</button></a></p>";
    response[#response + 1] = '<p>GPIO16 <a href=\"?GPIO16=1\"><button>ON</button></a>&nbsp;&nbsp;<a href=\"?GPIO16=0\"><button>OFF</button></a></p>';

    response[#response + 1] = '</div>';
    response[#response + 1] = "</body></html>";

  -- sends and removes the first element from the 'response' table
  local function send(localSocket)
    if #response > 0
    then localSocket:send(table.remove(response, 1))
    else
      localSocket:close()
      response = nil
    end
  end

  -- triggers the send() function again once the first chunk of data was sent
  sck:on("sent", send)

  send(sck)
end

srv:listen(80, function(conn)
  conn:on("receive", receiver)
end)


function ntpSyncGood(sec, usec, server, info)
        print('sync', sec, usec, server)
    
        offset_s = info.offset_s or 0
        offset_us = info.offset_us or 0
        delay_us = info.delay_us or 0
        stratum = info.stratum or 0
        leap = info.leap or 0
        print("offset_s "  .. offset_s)
        print("offset_us " .. offset_us)
        print("delay_us " .. delay_us )
        print("stratum " ..  stratum )
        print("leap " ..  leap)

        rtcGood = 1
end

function ntpSyncFail()
    print('failed!')
    rtcGood = 0
end

-- Single shot sync time with a server on the local network.
sntp.sync("pool.ntp.org", ntpSyncGood, ntpSyncFail, 1 )




mdns.register("clock1", { description="Top Clock", service="http", port=80, location='Kitchen' })

-- Set time to 2015 July 9, 18:29:49
-- rtctime.set(1436430589, 0)


uartTimer = tmr.create()
uartTimer:register(200, tmr.ALARM_AUTO, PrintUart)
uartTimer:interval(5000) -- actually, 3 seconds is better!
uartTimer:start()

--[[
DHTTimer = tmr.create()
DHTTimer:register(200, tmr.ALARM_AUTO, UpdateDHT)
DHTTimer:interval(10010) -- actually, 3 seconds is better!
DHTTimer:start()
--]]


--[[
ntpTimer = tmr.create()
ntpTimer:register(200, tmr.ALARM_AUTO, ntpSync)
ntpTimer:interval(2500) -- actually, 3 seconds is better!
ntpTimer:start()
--]]



