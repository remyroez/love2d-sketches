
function love.load()
	image = love.graphics.newImage("cake.png")
	love.graphics.setNewFont(12)
	--love.graphics.setColor(0, 0, 0)
	love.graphics.setBackgroundColor(255, 255, 255)
	num = 0
	imgx = 100
	imgy = 100
end

function love.update(dt)
	if love.keyboard.isDown("up") then
		num = num + 100 * dt
	end
end

function love.draw()
	love.graphics.setColor(0, 0, 0)
	love.graphics.print("Hello World!", num, 300)
	love.graphics.print("TESTTESTTEST", 100, 100, 15)
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(image, imgx, imgy)
end

function love.mousepressed(x, y, button, istouch)
	if button == 1 then
		imgx = x
		imgy = y
	end
end

function love.focus(f)
	print(f)
end

function love.quit()
	print("quit love")
end

