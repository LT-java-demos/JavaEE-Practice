#CookieAndSession

##CookieAndSession
  - cookie.jsp : 创建cookie，读取cookie
  - session.jsp : 
      - session相关操作。
      - web.xml将Session默认最大请求间隔（30分钟）改为20分钟
      >如果调用Session对象的setMaxInactiveInterval方法来设定Session请求的最大间隔，那么僵覆盖掉web.xml中配置的时间间隔
