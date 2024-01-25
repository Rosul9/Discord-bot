local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == '!mem' then
                local max, random = math.max, math.random
                mem = random(1,3)
        message.channel:send('Memix!')
        if mem == 1 then
                        message.channel:send('http://images.mtvnn.com/b815aca6bfbb5afab99be7e1748f3af6/630x354%3E')
                end
        if mem == 2 then
                        message.channel:send('https://www.wykop.pl/cdn/c3201142/comment_1YV8J2HZaa3euu6Z7OLbshMTLqRrkLHl.jpg')
                end
        if mem == 3 then
                        message.channel:send('https://www.wykop.pl/cdn/c3201142/comment_7SJ4QJjAXlIN8drigWpMMfhhbcGPZcHB.jpg')
                end
    end
end)

client:on('ready', function()
    print('Logged in as '.. client.user.username)
        client:setGame("pomoc - !Bhelp")
end)

client:on("messageCreate", function(message)
    local content = message.content
    local author = message.author
    if content == "!Bhelp" or content == "!bhelp" then
        message:reply {
            embed = {
                title = "***POMOC***",
                description = "Komendy",
                author = {
                    name = author.username,
                    icon_url = author.avatarURL
                },
                fields = { -- array of fields
                    {
                        name = "test iq",
                        value = "!test_iq",
                        inline = true
                    },
                    {
                        name = "memix",
                        value = "!mem",
                        inline = false
                    },
                    {
                        name = "papugowanie",
                        value = "!powiedz (...)",
                        inline = false
                    },
                },
                footer = {
                    text = "Zawsze do usług ;)"
                },
                color = 0xB8FF00 -- hex color code
            }
        }
    end
end)

client:on('messageCreate', function(message)
    if message.content == '!Phelp' then
		message.channel:send('**POMOC**')
		message.channel:send('Komenda na test iq - !test_iq')
		message.channel:send('Komenda na papugowanie - !powiedz...')
        message.channel:send('Komenda na memixa - !mem')
        message.channel:send('Komenda na embed - !embed')
    end
end)

client:on('messageCreate', function(message)
    discordia.extensions()
    local args = message.content:split(" ")
    local command = table.remove(args, 1)
    if command == "!powiedz" then
    local nazwa = table.concat(args, " ")
    if nazwa == "" then
    message.channel:send {
    content = "Nic nie napisałeś!",
    }
    else
    message.channel:send {
	content = "Ok ''" .. nazwa .. "''?",
	}
    end
    end
end)

client:on('messageCreate', function(message)
    if message.content == '!test_iq' then
                local max, random = math.max, math.random
                iq = random(1,1000)
                message.channel:send('Masz ' .. iq .. ' IQ!')
        end
        if message.content == 'Dzieki' then
            message.channel:send('Spoczko')
        end
end)

client:on("messageCreate", function(message)
    local content = message.content
    local author = message.author
    if content == "!embed" then
        message:reply {
            embed = {
                title = "Testowy embed",
                description = "Jeśli to czytasz - kod zadziałał!",
                author = {
                    name = author.username,
                    icon_url = author.avatarURL
                },
                fields = { -- array of fields
                    {
                        name = "Pole nr 1",
                        value = "Innowacja!",
                        inline = true
                    },
                    {
                        name = "Pole nr 2",
                        value = "meh",
                        inline = false
                    }
                },
                footer = {
                    text = "Stworzone w języku Discordii"
                },
                color = 0xB8FF00 -- hex color code
            }
        }
    end
end)
client:on('messageCreate', function(message)
    discordia.extensions()
    local content = message.content
    local Member = message.member
    if content == "daj role" then
    Member:addRole(785197868012798003)
    message.channel:send {
    content = "masz role",
    }
end
end)

client:on('messageCreate', function(message)
    if message.content == 'rola' then
		message.channel:send('Moja rola to')
	end
end)


client:run('Bot NzgyMDAxMjkzNTQ3NDA1MzMy.X8F1dQ.ZzvrmzUhxaPzEQBPtvqQBj1IXDg')