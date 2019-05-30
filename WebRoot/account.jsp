<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.film.bean.AccountBean" %>
<%AccountBean account=(AccountBean)session.getAttribute("account"); %>
<%if(account==null){ %>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<div class="header-top-right">
				<div class="file">
					<!-- <a href="upload.html">#<a> -->
				</div>	
				<div class="signin">
					<a href="#small-dialog2" class="play-icon popup-with-zoom-anim">注册</a>
					<!-- pop-up-box -->
									<!--//pop-up-box -->
									<div id="small-dialog2" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用QQ登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用微信登录</a>
											</div>
											<div class="button-bottom">
												<p>已有账户? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form>
												<input type="text" id="emailR" class="email" placeholder="输入邮箱" maxlength="20" pattern="[1-9]{1}\d{9}" title="输入邮箱" />
											</form>
											<div class="continue-button">
												<a href="#small-dialog3" class="hvr-shutter-out-horizontal play-icon popup-with-zoom-anim">下一步</a>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog3" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用QQ登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用微信登录</a>
											</div>
											<div class="button-bottom">
												<p>已有账户? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form id="registerform" action="register.action">
												<input type="text" id="usernameR" class="email" placeholder="输入用户名" maxlength="10" title="输入用户名" />
												<input type="password" id="pwdR" placeholder="密码" required="required" pattern=".{6,}" title="至少需要六位数" autocomplete="off" />
												<input type="password" id="compwdR" placeholder="确认密码" maxlength="10" pattern=".{6,}" title="至少需要六位数" />
												<p id="errorMessagesR" class="errorMessages"></p>
												<input type="button"  value="注册" onclick="AjaxLoginConnectionRegister($('#usernameR').val(),$('#emailR').val(),$('#pwdR').val(),$('#compwdR').val())"/>
											</form>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog7" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用QQ登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用微信登录</a>
											</div>
											<div class="button-bottom">
												<p>已有账户? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form action="login.action" id="loginform">
												<input type="text" id="email-login" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
												<input type="password" id="password-login" placeholder="密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
												
											</form>
										</div>
										<div class="clearfix"> </div>
									</div>		
									<div id="small-dialog4" class="mfp-hide">
										<h3>反馈</h3> 
										<div class="feedback-grids">
											<div class="feedback-grid"> 
												<p>请留下你的宝贵意见.....</p>
											</div>
											<div class="button-bottom">
												<p><a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a> 以提交你的反馈</p>
											</div>
										</div>
									</div>
									<div id="small-dialog5" class="mfp-hide">
										<h3>Help</h3> 
											<div class="help-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="help-grids">
												<div class="help-button-bottom">
													<p><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Feedback</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Lorem ipsum dolor sit amet</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Nunc vitae rutrum enim</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris at volutpat leo</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula rutrum velit</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Aliquam eget ante non orci fac</a></p>
												</div>
											</div>
									</div>
									<div id="small-dialog6" class="mfp-hide">
										<div class="video-information-text">
											<h4>Video information & settings</h4>
											<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											<ol>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
											</ol>
										</div>
									</div>
									<script>
											$(document).ready(function() {
											$('.popup-with-zoom-anim').magnificPopup({
												type: 'inline',
												fixedContentPos: false,
												fixedBgPos: true,
												overflowY: 'auto',
												closeBtnInside: true,
												preloader: false,
												midClick: true,
												removalDelay: 100, 
												mainClass: 'my-mfp-zoom-in'
											});
																											
											});
									</script>	
				</div>
				<div class="signin">
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a>
					<div id="small-dialog" class="mfp-hide">
						<h3>登录</h3>
						<div class="social-sits">
							<div class="facebook-button">
								<a href="#">使用QQ登录</a>
							</div>
							<div class="chrome-button">
								<a href="#">使用微信登录</a>
							</div>
							<div class="button-bottom">
								<p>创建新账户? <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">注册</a></p>
							</div>
						</div>
						<div class="signup">
							<form action="login.action"></form>
								<input type="text" id="email" class="email" placeholder="输入邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
								<input type="password" id="password" placeholder="密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
								<input type="submit"  class="continue-button" value="登录" onclick="AjaxLoginConnection('login!loginAccount',$('#email').val(),$('#password').val())"/>
								<p id="errorMessages" class="errorMessages"></p>
							
							<div class="forgot">
								<a href="userforget.jsp">忘记密码 ?</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
<%}else{%>
<% if(account.getAdmin().equals("0")){ %>
<div class="header-top-right">
				<div class="file">
				<%if(account.getVip().equals("0")){ %>
				<a href="javascript:void(0);">您还不是会员,</a><a href="uservip.jsp" style="color:red;">加入会员</a>
   <% if(account.getImg()==null||account.getImg().equals("null")){ %>
				
				<% }else{ %>
				<a href="javascript:void(0);"><img src="resource/userimg/<%= account.getImg() %>" style="width: 25px; height: 25px;"></a>
				<% } %>
				<a href="upload.html"><%=account.getUsername() %></a>
				<%} else{%>
				<a href="uservip.jsp" style="color:red;">欢迎您,尊贵的Movies会员</a>
   <% if(account.getImg()==null||account.getImg().equals("null")){ %>
				
				<% }else{ %>
				<a href="javascript:void(0);"><img src="resource/userimg/<%= account.getImg() %>" style="width: 25px; height: 25px;"></a>
				<% } %>
				<a href="upload.html" style="color:red;"><%=account.getUsername() %></a>
				<%} %>
			
				</div>	
				<% }else{ %>
				<div class="header-top-right">
				<div class="file">
				<%if(account.getVip().equals("0")){ %>
				<a href="javascript:void(0);">欢迎您,管理员</a>
   <% if(account.getImg()==null||account.getImg().equals("null")){ %>
				
				<% }else{ %>
				<a href="javascript:void(0);"><img src="resource/userimg/<%= account.getImg() %>" style="width: 25px; height: 25px;"></a>
				<% } %>
				<a href="upload.html"><%=account.getUsername() %></a>
				<%} else{%>
				<a href="uservip.jsp" style="color:red;">欢迎您,尊贵的Movies会员</a>
   <% if(account.getImg()==null||account.getImg().equals("null")){ %>
				
				<% }else{ %>
				<a href="javascript:void(0);"><img src="resource/userimg/<%= account.getImg() %>" style="width: 25px; height: 25px;"></a>
				<% } %>
				<a href="upload.html" style="color:red;"><%=account.getUsername() %></a>
				<%} %>
			
				</div>	
				<% } %>
				<div class="signin">
					<a href="admin!composite?type=0" class="play-icon">管理中心</a>
					<!-- pop-up-box -->
									<!--//pop-up-box -->
									<div id="small-dialog2" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用QQ登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用微信登录</a>
											</div> 
											<div class="button-bottom">
												<p>已有账户? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form>
												<input type="text" class="email" placeholder="输入邮箱" maxlength="10" pattern="[1-9]{1}\d{9}" title="输入邮箱" />
											</form>
											<div class="continue-button">
												<a href="#small-dialog3" class="hvr-shutter-out-horizontal play-icon popup-with-zoom-anim">下一步</a>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog3" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用QQ登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用微信登录</a>
											</div>
											<div class="button-bottom">
												<p>已有账户? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="注册">
											<form>
												<input type="text" class="email" placeholder="密码" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
												<input type="password" placeholder="确认密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
												<input type="text" class="email" placeholder="手机号码" maxlength="10" pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number" />
												<input type="submit"  value="注册"/>
											</form>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog7" class="mfp-hide">
										<h3>Create Account</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用QQ登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用微信登录</a>
											</div>
											<div class="button-bottom">
												<p>已有账户? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form action="upload.html">
												<input type="text" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
												<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
												<input type="submit"  value="登录"/>
											</form>
										</div>
										<div class="clearfix"> </div>
									</div>		
									<div id="small-dialog4" class="mfp-hide">
										<h3>Feedback</h3> 
										<div class="feedback-grids">
											<div class="feedback-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="button-bottom">
												<p><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign in</a> to get started.</p>
											</div>
										</div>
									</div>
									<div id="small-dialog5" class="mfp-hide">
										<h3>Help</h3> 
											<div class="help-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="help-grids">
												<div class="help-button-bottom">
													<p><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Feedback</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Lorem ipsum dolor sit amet</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Nunc vitae rutrum enim</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris at volutpat leo</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula rutrum velit</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Aliquam eget ante non orci fac</a></p>
												</div>
											</div>
									</div>
									<div id="small-dialog6" class="mfp-hide">
										<div class="video-information-text">
											<h4>Video information & settings</h4>
											<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											<ol>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
											</ol>
										</div>
									</div>
									<script>
											$(document).ready(function() {
											$('.popup-with-zoom-anim').magnificPopup({
												type: 'inline',
												fixedContentPos: false,
												fixedBgPos: true,
												overflowY: 'auto',
												closeBtnInside: true,
												preloader: false,
												midClick: true,
												removalDelay: 100, 
												mainClass: 'my-mfp-zoom-in'
											});
																											
											});
									</script>	
				</div>
				<div class="signin">
				<form action="login!loginOut" id="loginout" method="post">
					<a href="javascript:void(0);" class="play-icon popup-with-zoom-anim" onclick="document.getElementById('loginout').submit()">退出</a>
					</form>
					<div id="small-dialog" class="mfp-hide">
						<h3>登录</h3>
						<div class="social-sits">
							<div class="facebook-button">
								<a href="#">使用QQ登录</a>
							</div>
							<div class="chrome-button">
								<a href="#">使用微信登录</a>
							</div>
							<div class="button-bottom">
								<p>创建新账户? <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">注册</a></p>
							</div>
						</div>
						<div class="signup">
							<form>
								<input type="text" class="email" placeholder="输入邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
								<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
								<input type="submit"  value="登录"/>
							</form>
							<div class="forgot">
								<a href="userforget.jsp">忘记密码 ?</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
<%}%>