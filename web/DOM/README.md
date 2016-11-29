#DOM

##使用DOM解析XML


|名称|类型|作用|
|----|----|----|
|documentElement|节点|获取文档的根节点|
|childNodes|节点数组|获取节点下的子节点|
|firstChild|节点|获取第一个子节点|
|lastChild|节点|获取最后一个子节点|
|nextSibling|节点|获取后一个兄弟节点|
|previousSibling|节点|获取前一个兄弟节点|
|parentNode|节点|获取父节点|
|nodeType|整形|获取节点类型：1为元素，2为属性，3为文本|
|nodeName|字符串|获取节点名称：如果节点为元素，返回元素名称；如果节点为文本，返回null或undefined|
|nodeValue|字符串|获取节点值：如果节点为元素，返回null或undefined；如果节点为文本，返回文本值|
|getAttribute|方法|获取属性值|
