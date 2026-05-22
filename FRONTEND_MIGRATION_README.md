# 若依系统前端技术栈迁移说明

## 概述
本项目已将部分前端页面从 Bootstrap + jQuery 技术栈迁移到 Tailwind CSS + HTMX + Alpine.js + Font Awesome 技术栈。

## 技术栈对比

| 技术 | 原技术栈 | 新技术栈 |
|------|----------|----------|
| 样式框架 | Bootstrap 3.x | Tailwind CSS 3.x |
| JS 框架/库 | jQuery | Alpine.js |
| AJAX 交互 | jQuery.ajax | HTMX |
| 图标库 | Font Awesome 4.x | Font Awesome 6.x |

## 已迁移页面

以下页面已完成迁移：

1. **login-new.html** - 新登录页面
2. **register-new.html** - 新注册页面
3. **index-new.html** - 新首页框架
4. **main-new.html** - 新首页内容
5. **error/404-new.html** - 新 404 页面
6. **error/500-new.html** - 新 500 页面
7. **include-new.html** - 新通用包含文件

## 如何访问新页面

### 方法一：直接访问 URL（推荐用于测试）

在浏览器中直接访问以下 URL：
- 登录页面：`/login-new`（注意：需要后端支持，或修改登录控制器）
- 首页框架：`/index-new`（需要登录状态）
- 404 页面：`/error/404-new`（需要错误控制器支持）

### 方法二：修改现有控制器

如果需要正式使用新页面，可以修改以下控制器：

**SysLoginController.java**：
```java
// 添加新登录页面路由
@GetMapping("/login-new")
public String loginNew(HttpServletRequest request, HttpServletResponse response, ModelMap mmap)
{
    return login(request, response, mmap); // 复用原有逻辑
}

@GetMapping("/register-new")
public String registerNew(ModelMap mmap)
{
    // 复用原有注册逻辑
    return "register-new";
}
```

**SysIndexController.java**：
```java
// 修改 index 方法返回新页面
@GetMapping("/index")
public String index(ModelMap mmap, HttpServletRequest request)
{
    // ... 原有逻辑 ...
    return "index-new"; // 返回新页面
}

@GetMapping("/system/main")
public String main(ModelMap mmap)
{
    mmap.put("version", RuoYiConfig.getVersion());
    return "main-new";
}
```

## 页面特性

### 登录页面 (login-new.html)
- ✅ 使用 Tailwind CSS 实现现代化 UI
- ✅ 使用 Alpine.js 处理表单交互
- ✅ 响应式设计，支持移动设备
- ✅ 验证码刷新功能
- ✅ 实时表单验证

### 首页 (index-new.html)
- ✅ 左侧可收缩菜单
- ✅ 顶部导航栏
- ✅ 标签页切换功能
- ✅ 通知中心
- ✅ 用户菜单

### 错误页面
- ✅ 美观的错误展示
- ✅ 倒计时自动跳转
- ✅ 返回首页/上页按钮

## 开发建议

1. **渐进式迁移**：不要一次性迁移所有页面，建议按模块逐步迁移
2. **保持兼容性**：新旧页面可以共存，慢慢替换
3. **代码风格**：遵循 Tailwind CSS 的最佳实践，尽量使用原子类
4. **组件复用**：使用 Alpine.js 的 x-data 实现组件化开发

## 下一步计划

继续迁移以下模块的页面：
- 系统管理（用户、角色、菜单、部门等）
- 系统监控
- 系统工具
- 示例演示

## 常见问题

### Q: 新页面依赖哪些 CDN 资源？
A: 新页面使用以下 CDN：
- Tailwind CSS: `https://cdn.tailwindcss.com`
- Font Awesome: `https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css`
- HTMX: `https://unpkg.com/htmx.org@1.9.10`
- Alpine.js: `https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js`

### Q: 如何配置 Tailwind CSS 的主题？
A: 可以在页面中使用 `<script>tailwind.config = { ... }</script>` 来自定义主题。

### Q: 旧的 jQuery 插件还能用吗？
A: 可以，但建议逐步用 Alpine.js 替代，或者在新页面中混合使用。
