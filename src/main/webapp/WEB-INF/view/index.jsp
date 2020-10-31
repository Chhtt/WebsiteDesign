<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fms" uri="com.sail.masterpage" %>
<fms:ContentPage masterPagePath="/WEB-INF/view/layout/layout.jsp">
  <fms:Content contentPlaceHolderId="body" >

    <div class="bg1">
      <div class="con1">
        <form class="form-horizontal" role="form" action="Login" method="post">
          <div class="form-group">
            <label for="username" class="col-sm-2 control-label btm">username</label>
            <div class="col-sm-10">
              <input type="text" class="form-control"  name="username" id="username" placeholder="username">
            </div>
          </div>
          <div class="form-group">
            <label for="password" class="col-sm-2 control-label btm ">password</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" name="password" id="password" placeholder="password">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-primary" >登录</button>
              &ensp;
              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">注册</button>
            </div>
          </div>
        </form>
        <div class="btm">${msg}</div>
      </div>
    </div>


    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="myModalLabel">
              Register
            </h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
              &times;
            </button>

          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form" action="register" method="post">
              <div class="form-group">
                <label for="rusername" class="col-sm-2 control-label">Username</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control"  name="name" id="rusername"placeholder="username">
                </div>
              </div>
              <div class="form-group">
                <label for="rpassword" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password" id="rpassword" placeholder="password">
                </div>
              </div>

              <div class="form-group">
                <label for="type" class="col-sm-2 control-label">Type</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="type" id="type" placeholder="0-管理员 1-商家 2-普通用户">
                </div>
              </div>
              <button type="submit" class="btn btn-primary">提交</button>
            </form>
          </div>

        </div><!-- /.modal-content -->
      </div><!-- /.modal -->
    </div>

    <div class="btm">${msg1}</div>
    <div class="btm">${msg2}</div>

    <div class="foo">
  <span class="btm">
    网页个人设计 © 2020 Designed by RIG team<br>
    反馈电话:10086
  </span>

    </div>
  </fms:Content>
</fms:ContentPage>

