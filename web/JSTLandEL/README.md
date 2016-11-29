#JSTL
1.导入jstl.jar

2.jsp

```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```

---------------

##JSTL

- Core标签库中的基本标签包括：`<c:out>`、`<c:set>`、`<c:remove>`

>- 在`<c:set>`标签中`var`和`target`属性不能同时出现
>- `scope`属性是可选择的，默认为`page`
>- 如果`value`属性的值为`null`，那么`var`指定的属性则被删除