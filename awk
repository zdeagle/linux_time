1、awk方式

  使用内置函数实现转换。
函数名	说明
   mktime( YYYY MM DD HH MM SS[ DST])	生成时间格式
   strftime([format [, timestamp]])	格式化时间输出，将时间戳转为时间字符串具体格式，见下表.
   systime()	得到时间戳,返回从1970年1月1日开始到当前时间(不计闰年)的整秒数


strftime的format格式：
  
  格式	描述
  %a	星期几的缩写(Sun)
  %A	星期几的完整写法(Sunday)
  %b	月名的缩写(Oct)
  %B	月名的完整写法(October)
  %c	本地日期和时间
  %d	十进制日期
  %D	日期 08/20/99
  %e	日期，如果只有一位会补上一个空格
  %H	用十进制表示24小时格式的小时
  %I	用十进制表示12小时格式的小时
  %j	从1月1日起一年中的第几天
  %m	十进制表示的月份
  %M	十进制表示的分钟
  %p	12小时表示法(AM/PM)
  %S	十进制表示的秒
  %U	十进制表示的一年中的第几个星期(星期天作为一个星期的开始)
  %w	十进制表示的星期几(星期天是0)
  %W	十进制表示的一年中的第几个星期(星期一作为一个星期的开始)
  %x	重新设置本地日期(08/20/99)
  %X	重新设置本地时间(12：00：00)
  %y	两位数字表示的年(99)
  %Y	当前月份
  %Z	时区(PDT)
  %%	百分号(%)
  
例子：
  awk 'BEGIN{tstamp=mktime("2001 01 01 12 12 12");print strftime("%c",tstamp);}'
  2001年01月01日 星期一 12时12分12秒

  awk 'BEGIN{tstamp1=mktime("2011 01 01 12 12 12");tstamp2=systime();print tstamp2-tstamp1;}' 
  --》308201392
