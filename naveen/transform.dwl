%dw 2.0
output json
---
payload map (item, index) ->{
id: index+1,
name: item.name,
jobs: item.jobs map ((item1,index1) -> {num:index1+1} ++ item1)
}
//maping the data and add numbers and id keys as required output