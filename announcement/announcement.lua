require "json"

g_hasAnnouncement = true
g_announcementTitle = "公告"

local t = {
        format = {
            color = "0xFFFFFF",
            content = "恭喜你，在%param0%学员招募赛现金赛%param1%中获得%param2%(%param3%)",
        },
        param0 = {
            color = "0xff0000",
            content = "2017/05/09",
        },
        param1 = {
            color = "0x0000ff",
            content = "低倍场",
        },
        param2 = {
            color = "0x00ff00",
            content = "一等奖",
        },
    }
    
g_announcementContent = json.encode(t)