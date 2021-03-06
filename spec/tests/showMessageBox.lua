local Audio = {}
Audio.__index = Audio
function create()
  local title = "This is a title"
  local message = "Message boxes with multiple buttons don't work ¯\\_(ツ)_/¯ "
  local buttons = {"OK", "No!", "Help", escapebutton = 2, enterbutton = 1}

  --local pressedbutton = love.window.showMessageBox(title, message, buttons, "info", false)
  local pressedbutton = love.window.showMessageBox(title, message, "info")

  local test = {
    response = 'Pressed: ' .. tostring(pressedbutton)
  }
  setmetatable(test, Audio)
  return test
end

function Audio:draw()
  love.graphics.print(self.response, 100, 100)
end

return create
