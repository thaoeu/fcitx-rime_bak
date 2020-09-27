function date_translator(input, seg)
   if (input == "orq") then
	  --普通日期1，类似2020年2月26日
	  num_m=os.date("%m")+0
	  num_m1=math.modf(num_m)
	  num_d=os.date("%d")+0 
	  num_d1=math.modf(num_d)
	  date1=os.date("%Y年")..tostring(num_m1).."月"..tostring(num_d1).."日"

      --- Candidate(type, start, end, text, comment)
      yield(Candidate("date", seg.start, seg._end, date1, " "))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), " "))
   end
end

function time_translator(input, seg)
   if (input == "ouj") then
	 --星期
	local day_w=os.date("%w")
	local day_w1=""
	if day_w=="0" then day_w1="周日" end
	if day_w=="1" then day_w1="周一" end
	if day_w=="2" then day_w1="周二" end
	if day_w=="3" then day_w1="周三" end
	if day_w=="4" then day_w1="周四" end
	if day_w=="5" then day_w1="周五" end
	if day_w=="6" then day_w1="周六" end

	  num_h=os.date("%H")+0
	  num_h1=math.modf(num_h)
	  
	  --普通时间1，类似9:09 周三
	  --普通时间2，类似9点09分
	  time1=tostring(num_h1)..":"..os.date("%M").." "..tostring(day_w1)
	  time2=tostring(num_h1).."点"..os.date("%M").."分"



      yield(Candidate("time", seg.start, seg._end, time1, "  "))
      yield(Candidate("time", seg.start, seg._end, time2, "  "))
   end
end

