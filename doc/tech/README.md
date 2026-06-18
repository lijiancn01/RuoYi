# 若依管理系统 技术文档导航

> RuoYi v4.8.3 | Spring Boot 4.0.3 | Shiro 2.1.0 | MyBatis | Thymeleaf

---

## 快速定位索引

| 我想... | 去哪里 |
|---------|--------|
| 了解项目整体情况、技术栈、模块划分 | [01-项目概览](01-项目概览.md) |
| 理解架构分层、请求流转、核心基类 | [02-架构设计](02-架构设计.md) |
| 查看某个业务模块的详情 | [03-模块详解/_index](03-模块详解/_index.md) |
| 了解安全认证/缓存/文件上传等基础设施 | [04-基础设施](04-基础设施.md) |
| 使用代码生成器快速开发 | [05-代码生成器](05-代码生成器.md) |
| 新增一个业务模块的标准流程 | [06-开发指南](06-开发指南.md) |
| 查看数据库表结构与字段说明 | [07-数据库字典](07-数据库字典.md) |

---

## 代码定位速查

### 系统管理模块

| 功能 | Controller | Service接口 | Service实现 | Mapper接口 | Mapper XML | Domain | 列表页 | 新增页 | 编辑页 |
|------|-----------|------------|------------|-----------|-----------|--------|--------|--------|--------|
| 用户管理 | [SysUserController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysUserController.java) | [ISysUserService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysUserService.java) | [SysUserServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysUserServiceImpl.java) | [SysUserMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysUserMapper.java) | [SysUserMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysUserMapper.xml) | [SysUser](../../ruoyi-common/src/main/java/com/ruoyi/common/core/domain/entity/SysUser.java) | user.html | add.html | edit.html |
| 角色管理 | [SysRoleController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysRoleController.java) | [ISysRoleService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysRoleService.java) | [SysRoleServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysRoleServiceImpl.java) | [SysRoleMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysRoleMapper.java) | [SysRoleMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysRoleMapper.xml) | [SysRole](../../ruoyi-common/src/main/java/com/ruoyi/common/core/domain/entity/SysRole.java) | role.html | add.html | edit.html |
| 菜单管理 | [SysMenuController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysMenuController.java) | [ISysMenuService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysMenuService.java) | [SysMenuServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysMenuServiceImpl.java) | [SysMenuMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysMenuMapper.java) | [SysMenuMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysMenuMapper.xml) | [SysMenu](../../ruoyi-common/src/main/java/com/ruoyi/common/core/domain/entity/SysMenu.java) | menu.html | add.html | edit.html |
| 部门管理 | [SysDeptController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysDeptController.java) | [ISysDeptService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysDeptService.java) | [SysDeptServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysDeptServiceImpl.java) | [SysDeptMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysDeptMapper.java) | [SysDeptMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysDeptMapper.xml) | [SysDept](../../ruoyi-common/src/main/java/com/ruoyi/common/core/domain/entity/SysDept.java) | dept.html | add.html | edit.html |
| 岗位管理 | [SysPostController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysPostController.java) | [ISysPostService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysPostService.java) | [SysPostServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysPostServiceImpl.java) | [SysPostMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysPostMapper.java) | [SysPostMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysPostMapper.xml) | [SysPost](../../ruoyi-system/src/main/java/com/ruoyi/system/domain/SysPost.java) | post.html | add.html | edit.html |
| 字典类型 | [SysDictTypeController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysDictTypeController.java) | [ISysDictTypeService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysDictTypeService.java) | [SysDictTypeServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysDictTypeServiceImpl.java) | [SysDictTypeMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysDictTypeMapper.java) | [SysDictTypeMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysDictTypeMapper.xml) | [SysDictType](../../ruoyi-common/src/main/java/com/ruoyi/common/core/domain/entity/SysDictType.java) | type.html | add.html | edit.html |
| 字典数据 | [SysDictDataController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysDictDataController.java) | [ISysDictDataService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysDictDataService.java) | [SysDictDataServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysDictDataServiceImpl.java) | [SysDictDataMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysDictDataMapper.java) | [SysDictDataMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysDictDataMapper.xml) | [SysDictData](../../ruoyi-common/src/main/java/com/ruoyi/common/core/domain/entity/SysDictData.java) | data.html | add.html | edit.html |
| 参数配置 | [SysConfigController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysConfigController.java) | [ISysConfigService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysConfigService.java) | [SysConfigServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysConfigServiceImpl.java) | [SysConfigMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysConfigMapper.java) | [SysConfigMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysConfigMapper.xml) | [SysConfig](../../ruoyi-system/src/main/java/com/ruoyi/system/domain/SysConfig.java) | config.html | add.html | edit.html |
| 通知公告 | [SysNoticeController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysNoticeController.java) | [ISysNoticeService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysNoticeService.java) | [SysNoticeServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysNoticeServiceImpl.java) | [SysNoticeMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysNoticeMapper.java) | [SysNoticeMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysNoticeMapper.xml) | [SysNotice](../../ruoyi-system/src/main/java/com/ruoyi/system/domain/SysNotice.java) | notice.html | add.html | edit.html |

### 系统监控模块

| 功能 | Controller | Service接口 | Service实现 | Mapper接口 | Mapper XML | Domain | 页面 |
|------|-----------|------------|------------|-----------|-----------|--------|------|
| 在线用户 | [SysUserOnlineController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/monitor/SysUserOnlineController.java) | [ISysUserOnlineService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysUserOnlineService.java) | [SysUserOnlineServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysUserOnlineServiceImpl.java) | [SysUserOnlineMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysUserOnlineMapper.java) | [SysUserOnlineMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysUserOnlineMapper.xml) | [SysUserOnline](../../ruoyi-system/src/main/java/com/ruoyi/system/domain/SysUserOnline.java) | online.html |
| 操作日志 | [SysOperlogController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/monitor/SysOperlogController.java) | [ISysOperLogService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysOperLogService.java) | [SysOperLogServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysOperLogServiceImpl.java) | [SysOperLogMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysOperLogMapper.java) | [SysOperLogMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysOperLogMapper.xml) | [SysOperLog](../../ruoyi-system/src/main/java/com/ruoyi/system/domain/SysOperLog.java) | operlog.html |
| 登录日志 | [SysLogininforController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/monitor/SysLogininforController.java) | [ISysLogininforService](../../ruoyi-system/src/main/java/com/ruoyi/system/service/ISysLogininforService.java) | [SysLogininforServiceImpl](../../ruoyi-system/src/main/java/com/ruoyi/system/service/impl/SysLogininforServiceImpl.java) | [SysLogininforMapper](../../ruoyi-system/src/main/java/com/ruoyi/system/mapper/SysLogininforMapper.java) | [SysLogininforMapper.xml](../../ruoyi-system/src/main/resources/mapper/system/SysLogininforMapper.xml) | [SysLogininfor](../../ruoyi-system/src/main/java/com/ruoyi/system/domain/SysLogininfor.java) | logininfor.html |
| 缓存监控 | [CacheController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/monitor/CacheController.java) | — | [CacheService](../../ruoyi-framework/src/main/java/com/ruoyi/framework/web/service/CacheService.java) | — | — | — | cache.html |
| 服务器监控 | [ServerController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/monitor/ServerController.java) | — | [Server](../../ruoyi-framework/src/main/java/com/ruoyi/framework/web/domain/Server.java) | — | — | — | server.html |
| 数据监控 | [DruidController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/monitor/DruidController.java) | — | — | — | — | — | — |

### 定时任务模块

| 功能 | Controller | Service接口 | Service实现 | Mapper接口 | Mapper XML | Domain | 页面 |
|------|-----------|------------|------------|-----------|-----------|--------|------|
| 定时任务 | [SysJobController](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/controller/SysJobController.java) | [ISysJobService](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/service/ISysJobService.java) | [SysJobServiceImpl](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/service/impl/SysJobServiceImpl.java) | [SysJobMapper](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/mapper/SysJobMapper.java) | [SysJobMapper.xml](../../ruoyi-quartz/src/main/resources/mapper/quartz/SysJobMapper.xml) | [SysJob](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/domain/SysJob.java) | gen.html |
| 调度日志 | [SysJobLogController](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/controller/SysJobLogController.java) | [ISysJobLogService](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/service/ISysJobLogService.java) | [SysJobLogServiceImpl](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/service/impl/SysJobLogServiceImpl.java) | [SysJobLogMapper](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/mapper/SysJobLogMapper.java) | [SysJobLogMapper.xml](../../ruoyi-quartz/src/main/resources/mapper/quartz/SysJobLogMapper.xml) | [SysJobLog](../../ruoyi-quartz/src/main/java/com/ruoyi/quartz/domain/SysJobLog.java) | — |

### 代码生成模块

| 功能 | Controller | Service接口 | Service实现 | Mapper接口 | Mapper XML | Domain | 页面 |
|------|-----------|------------|------------|-----------|-----------|--------|------|
| 代码生成 | [GenController](../../ruoyi-generator/src/main/java/com/ruoyi/generator/controller/GenController.java) | [IGenTableService](../../ruoyi-generator/src/main/java/com/ruoyi/generator/service/IGenTableService.java) | [GenTableServiceImpl](../../ruoyi-generator/src/main/java/com/ruoyi/generator/service/impl/GenTableServiceImpl.java) | [GenTableMapper](../../ruoyi-generator/src/main/java/com/ruoyi/generator/mapper/GenTableMapper.java) | [GenTableMapper.xml](../../ruoyi-generator/src/main/resources/mapper/generator/GenTableMapper.xml) | [GenTable](../../ruoyi-generator/src/main/java/com/ruoyi/generator/domain/GenTable.java) | gen.html |

### 公共模块

| 功能 | Controller | 说明 |
|------|-----------|------|
| 文件上传下载 | [CommonController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/common/CommonController.java) | 通用文件上传/下载/资源下载 |
| 验证码 | [SysCaptchaController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysCaptchaController.java) | 验证码图片生成 |
| 登录认证 | [SysLoginController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysLoginController.java) | 登录/未授权页面 |
| 个人信息 | [SysProfileController](../../ruoyi-admin/src/main/java/com/ruoyi/web/controller/system/SysProfileController.java) | 个人信息/修改密码/头像 |

---

## 基础设施速查

| 基础设施 | 核心类 | 配置文件 | 详见 |
|---------|--------|---------|------|
| 安全认证(Shiro) | [ShiroConfig](../../ruoyi-framework/src/main/java/com/ruoyi/framework/config/ShiroConfig.java) | application.yml(shiro.*) | [04-基础设施](04-基础设施.md) |
| 数据权限 | [DataScopeAspect](../../ruoyi-framework/src/main/java/com/ruoyi/framework/aspectj/DataScopeAspect.java) | — | [04-基础设施](04-基础设施.md) |
| 操作日志 | [LogAspect](../../ruoyi-framework/src/main/java/com/ruoyi/framework/aspectj/LogAspect.java) | — | [04-基础设施](04-基础设施.md) |
| 防重提交 | [SameUrlDataInterceptor](../../ruoyi-framework/src/main/java/com/ruoyi/framework/interceptor/impl/SameUrlDataInterceptor.java) | — | [04-基础设施](04-基础设施.md) |
| XSS防护 | [XssFilter](../../ruoyi-common/src/main/java/com/ruoyi/common/xss/XssFilter.java) | application.yml(xss.*) | [04-基础设施](04-基础设施.md) |
| 异常处理 | [GlobalExceptionHandler](../../ruoyi-framework/src/main/java/com/ruoyi/framework/web/exception/GlobalExceptionHandler.java) | — | [04-基础设施](04-基础设施.md) |
| 多数据源 | [DynamicDataSource](../../ruoyi-framework/src/main/java/com/ruoyi/framework/datasource/DynamicDataSource.java) | application-druid.yml | [04-基础设施](04-基础设施.md) |
| 密码策略 | [SysPasswordService](../../ruoyi-framework/src/main/java/com/ruoyi/framework/shiro/service/SysPasswordService.java) | application.yml(user.password.*) | [04-基础设施](04-基础设施.md) |
