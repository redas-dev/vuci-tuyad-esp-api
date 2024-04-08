local ConfigService = require("api/ConfigService")

local Config = ConfigService:new({})

local Section = Config:section("tuyad_esp", "tuyad_esp")

-- deviceID option
local opt_deviceID = Section:option("deviceID")
    function opt_deviceID:set(value)
        self:table_set(self.config, self.sid, "deviceID", value)
    end

    function opt_deviceID:get()
        return self:table_get(self.config, self.sid, "deviceID")
    end

-- productID option
local opt_productID = Section:option("productID")
    function opt_productID:set(value)
        self:table_set(self.config, self.sid, "productID", value)
    end

    function opt_productID:get()
        return self:table_get(self.config, self.sid, "productID")
    end

-- secret option
local opt_secret = Section:option("secret")
    function opt_secret:set(value)
        self:table_set(self.config, self.sid, "secret", value)
    end

    function opt_secret:get()
        return self:table_get(self.config, self.sid, "secret")
    end

-- enable option
local opt_enable = Section:option("enable")
    function opt_secret:validate(value)
        return self.dt.integer(value)
    end

    function opt_enable:set(value)
        self:table_set(self.config, self.sid, "enable", value)
    end

    function opt_enable:get()
        return self:table_get(self.config, self.sid, "enable")
    end

return Config