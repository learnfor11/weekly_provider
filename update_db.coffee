FS = require 'fs'
axios = require 'axios'

# raw_readme = await axios.get 'https://raw.githubusercontent.com/ruanyf/weekly/master/README.md'
# console.log { raw_readme }

FS.writeFileSync './db.json', JSON.stringify({
  last_updated: new Date()
  list: [
    [258, '卡马克的猫', [2023, 6, 9]]
    [257, '黄仁勋的 Nvidia 故事', [2023, 6, 2]]
    [256, '最酷的乐高作品', [2023, 5, 26]]
  ].map ([number, title, [year, month, date]]) -> {
    number
    title
    date: new Date year, month - 1, date, 1
  }
}, null, 2)
