local ltui        = require("ltui")
local application = ltui.application
local event       = ltui.event
local rect        = ltui.rect
local window      = ltui.window
local view        = ltui.view
local label       = ltui.label
local button      = ltui.button

local app         = application()

function app:init()
  application.init(self, "demo")
  local containers = { "container1", "container2", "container3", "container4" }
  local container_window = window:new("window.container", rect { 1, 1, 50, 10 }, "containers", false)
  container_window:background_set("blue")
  for i = 1, 4, 1 do
    container_window:insert(label:new(containers[i], rect { 2, 1 + i, 15, 2 + i }, containers[i]):textattr_set("white")
    :background_set("black"))
  end

  self:insert(container_window)
end

app:run()
