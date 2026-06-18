# 03-模块详解 导航

本目录包含各业务模块的详细技术文档，每个模块一个文件。

---

## 模块列表

| 模块 | 文档 | 核心功能 | 涉及表 |
|------|------|---------|--------|
| 系统管理 | [系统管理.md](系统管理.md) | 用户/角色/菜单/部门/岗位/字典/配置/通知 | sys_user, sys_role, sys_menu, sys_dept, sys_post, sys_dict_type, sys_dict_data, sys_config, sys_notice, sys_notice_read + 4个关联表 |
| 系统监控 | [系统监控.md](系统监控.md) | 在线用户/操作日志/登录日志/缓存监控/服务器监控/数据监控 | sys_user_online, sys_oper_log, sys_logininfor |
| 定时任务 | [定时任务.md](定时任务.md) | 任务管理/任务日志/任务调度 | sys_job, sys_job_log |

---

## 模块与代码目录对应

| 模块 | Controller目录 | Service目录 | Mapper目录 | 页面目录 |
|------|---------------|------------|-----------|---------|
| 系统管理 | ruoyi-admin/.../controller/system/ | ruoyi-system/.../service/ | ruoyi-system/.../mapper/ | templates/system/ |
| 系统监控 | ruoyi-admin/.../controller/monitor/ | ruoyi-system/.../service/ + ruoyi-framework/.../service/ | ruoyi-system/.../mapper/ | templates/monitor/ |
| 定时任务 | ruoyi-quartz/.../controller/ | ruoyi-quartz/.../service/ | ruoyi-quartz/.../mapper/ | templates/monitor/（页面在admin） |

---

## 权限标识命名规则

格式：`{模块}:{功能}:{操作}`

| 模块 | 前缀 | 示例 |
|------|------|------|
| 系统管理 | system | system:user:list, system:role:edit |
| 系统监控 | monitor | monitor:online:list, monitor:operlog:remove |
| 定时任务 | monitor | monitor:job:add, monitor:job:changeStatus |
| 代码生成 | tool | tool:gen:list, tool:gen:code |

操作后缀约定：

| 后缀 | 含义 |
|------|------|
| `:view` | 查看页面（菜单权限） |
| `:list` | 查询列表 |
| `:add` | 新增 |
| `:edit` | 修改 |
| `:remove` | 删除 |
| `:export` | 导出 |
| `:import` | 导入 |
| `:detail` | 查看详情 |
| `:resetPwd` | 重置密码 |
| `:changeStatus` | 状态切换 |
| `:forceLogout` | 强制退出 |
| `:code` | 生成代码 |
| `:preview` | 预览代码 |
