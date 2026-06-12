
function getLyric(id)
    local lyric = table.json(gg.makeRequest("https://music.163.com/api/song/media?id="..id).content).lyric
    if lyric == nil then return "纯音乐，请欣赏 \n By Tiny" end
    local lyricData = {}
    local split = string.split(lyric:gsub("]","],"), "\n")
    for index, line in ipairs(split) do
        local splitLine = string.split(line, ",")
        if #splitLine >= 2 and (splitLine[1] ~= '' or splitLine[2] ~= '') then
            local time = splitLine[1]
            time = string.gsub(time, "%[", "")
            time = string.gsub(time, "%]", "")
            local minutes, second, millisecond = string.match(time, "(%d+):(%d+).(%d+)")
            local time = tonumber(minutes) * 60000 + tonumber(second) * 1000
            local time = time + millisecond
            local musicLyric = splitLine[2]
            table.insert(lyricData, {time, musicLyric})
        end
    end
    return lyricData
end
MusicId=1827600686---音乐ID
lyric=getLyric(MusicId)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..MusicId..".mp3")
gg.sleep(2000)---自行根据网速调配
for index, value in ipairs(lyric) do
draw.remove()
drawColor="0xff004eff"
if index-1>0 then
draw.text("TINY内部 总群818963998", 100,100)
draw.setColor("#713BD1")
draw.text(lyric[index-1][2], 100,200)
draw.setColor("#004eff")
draw.text(value[2], 100,300)
draw.setColor("#004eff")
draw.text(lyric[index+1][2], 100,400)
draw.setColor("#004eff")
gg.sleep(value[1]-lyric[index-1][1])
else
draw.text("TINY内部 总群818963998", 100,100)
draw.setColor("#713BD1")
draw.text(value[2], 100,300)
draw.setColor("#004eff")
draw.text(lyric[index+1][2], 100,400)
draw.setColor("#004eff")
gg.sleep(value[1])
end
end