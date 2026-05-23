#!/bin/bash

echo "========================================="
echo "若依系统 - 全面功能测试"
echo "========================================="
echo ""

# 测试配置
BASE_URL="http://localhost:8080"
COOKIE_FILE="/tmp/test_cookies.txt"

# 清理旧的 cookie
rm -f $COOKIE_FILE

echo "1. 测试登录..."
LOGIN_RESPONSE=$(curl -s -c $COOKIE_FILE -X POST "$BASE_URL/login" \
  -d "username=admin&password=admin123" \
  -H "X-Requested-With: XMLHttpRequest")
echo "登录响应: $LOGIN_RESPONSE"
echo ""

echo "2. 测试用户列表查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/user/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 用户列表查询成功" || echo "✗ 用户列表查询失败"
echo ""

echo "3. 测试角色列表查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/role/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 角色列表查询成功" || echo "✗ 角色列表查询失败"
echo ""

echo "4. 测试菜单列表查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/menu/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 菜单列表查询成功" || echo "✗ 菜单列表查询失败"
echo ""

echo "5. 测试部门列表查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/dept/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 部门列表查询成功" || echo "✗ 部门列表查询失败"
echo ""

echo "6. 测试系统配置查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/config/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 系统配置查询成功" || echo "✗ 系统配置查询失败"
echo ""

echo "7. 测试字典类型查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/dict/type/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 字典类型查询成功" || echo "✗ 字典类型查询失败"
echo ""

echo "8. 测试字典数据查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/dict/data/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10&dictType=sys_user_sex" | jq .code 2>/dev/null && echo "✓ 字典数据查询成功" || echo "✗ 字典数据查询失败"
echo ""

echo "9. 测试岗位列表查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/post/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 岗位列表查询成功" || echo "✗ 岗位列表查询失败"
echo ""

echo "10. 测试通知公告查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/system/notice/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 通知公告查询成功" || echo "✗ 通知公告查询失败"
echo ""

echo "11. 测试在线用户查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/monitor/online/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 在线用户查询成功" || echo "✗ 在线用户查询失败"
echo ""

echo "12. 测试操作日志查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/monitor/operlog/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 操作日志查询成功" || echo "✗ 操作日志查询失败"
echo ""

echo "13. 测试登录日志查询..."
curl -s -b $COOKIE_FILE -X POST "$BASE_URL/monitor/logininfor/list" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "X-Requested-With: XMLHttpRequest" \
  -d "pageNum=1&pageSize=10" | jq .code 2>/dev/null && echo "✓ 登录日志查询成功" || echo "✗ 登录日志查询失败"
echo ""

echo "14. 测试服务器监控..."
curl -s -b $COOKIE_FILE "$BASE_URL/monitor/server/getServerInfo" | jq .code 2>/dev/null && echo "✓ 服务器监控查询成功" || echo "✗ 服务器监控查询失败"
echo ""

echo "15. 测试缓存监控..."
curl -s -b $COOKIE_FILE "$BASE_URL/monitor/cache/getNames" | jq .code 2>/dev/null && echo "✓ 缓存监控查询成功" || echo "✗ 缓存监控查询失败"
echo ""

echo "========================================="
echo "测试完成"
echo "========================================="
