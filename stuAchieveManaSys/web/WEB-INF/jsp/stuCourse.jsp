<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
</head>
<body>
	
    <div class="loader">
      <div class="lds-ripple">
        <div></div>
        <div></div>
      </div>
    </div>
  
    <aside class="sidebar">
      <div class="logo">
        <a href="skip_skip2.action">+</a>
      </div>
    </aside>
   
    <header>
      <div class="header-inner"> 
        <h1>当前用户：${sessionScope.user.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已选课程</h1>
      </div>
    </header>

    <section class="grid-holder">

 
      <div class="grid-list-layout">
        <nav class="navigation">
          <li><a href="#"><span>1班</span></a></li>
          <li><a href="#" ><span>软工</span></a></li>
          <li><a href="#"><span>学号29</span></a></li>
        </nav>
        
        
        <div class="grid-list-holder">
          <span class="grid-layout active">
          <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
      viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
          <g>
            <g>
              <path d="M176.792,0H59.208C26.561,0,0,26.561,0,59.208v117.584C0,209.439,26.561,236,59.208,236h117.584
                C209.439,236,236,209.439,236,176.792V59.208C236,26.561,209.439,0,176.792,0z M196,176.792c0,10.591-8.617,19.208-19.208,19.208
                H59.208C48.617,196,40,187.383,40,176.792V59.208C40,48.617,48.617,40,59.208,40h117.584C187.383,40,196,48.617,196,59.208
                V176.792z"/>
            </g>
          </g>
          <g>
            <g>
              <path d="M452,0H336c-33.084,0-60,26.916-60,60v116c0,33.084,26.916,60,60,60h116c33.084,0,60-26.916,60-60V60
                C512,26.916,485.084,0,452,0z M472,176c0,11.028-8.972,20-20,20H336c-11.028,0-20-8.972-20-20V60c0-11.028,8.972-20,20-20h116
                c11.028,0,20,8.972,20,20V176z"/>
            </g>
          </g>
          <g>
            <g>
              <path d="M176.792,276H59.208C26.561,276,0,302.561,0,335.208v117.584C0,485.439,26.561,512,59.208,512h117.584
                C209.439,512,236,485.439,236,452.792V335.208C236,302.561,209.439,276,176.792,276z M196,452.792
                c0,10.591-8.617,19.208-19.208,19.208H59.208C48.617,472,40,463.383,40,452.792V335.208C40,324.617,48.617,316,59.208,316h117.584
                c10.591,0,19.208,8.617,19.208,19.208V452.792z"/>
            </g>
          </g>
          <g>
            <g>
              <path d="M452,276H336c-33.084,0-60,26.916-60,60v116c0,33.084,26.916,60,60,60h116c33.084,0,60-26.916,60-60V336
                C512,302.916,485.084,276,452,276z M472,452c0,11.028-8.972,20-20,20H336c-11.028,0-20-8.972-20-20V336c0-11.028,8.972-20,20-20
                h116c11.028,0,20,8.972,20,20V452z"/>
            </g>
          </g>
          <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g>
          </svg>
        </span>
          <span class="list-layout">
          <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
      viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
    <g>
      <g>
        <path d="M100.923,0C64.276,0,34.462,29.814,34.462,66.462s29.814,66.462,66.462,66.462c36.647,0,66.462-29.814,66.462-66.462
          S137.57,0,100.923,0z M100.923,103.385C80.563,103.385,64,86.821,64,66.462s16.563-36.923,36.923-36.923
          c20.36,0,36.923,16.563,36.923,36.923S121.283,103.385,100.923,103.385z"/>
      </g>
    </g>
    <g>
      <g>
        <path d="M462.769,22.154h-256c-8.157,0-14.769,6.613-14.769,14.769V96c0,8.157,6.613,14.769,14.769,14.769h256
          c8.157,0,14.769-6.613,14.769-14.769V36.923C477.538,28.767,470.926,22.154,462.769,22.154z M448,81.231H221.538V51.692H448
          V81.231z"/>
      </g>
    </g>
    <g>
      <g>
        <path d="M100.923,189.538c-36.647,0-66.462,29.814-66.462,66.462s29.814,66.462,66.462,66.462
          c36.647,0,66.462-29.814,66.462-66.462S137.57,189.538,100.923,189.538z M100.923,292.923C80.563,292.923,64,276.36,64,256
          s16.563-36.923,36.923-36.923c20.36,0,36.923,16.563,36.923,36.923S121.283,292.923,100.923,292.923z"/>
      </g>
    </g>
    <g>
      <g>
        <path d="M462.769,211.692h-256c-8.157,0-14.769,6.613-14.769,14.769v59.077c0,8.157,6.613,14.769,14.769,14.769h256
          c8.157,0,14.769-6.613,14.769-14.769v-59.077C477.538,218.305,470.926,211.692,462.769,211.692z M448,270.769H221.538v-29.538H448
          V270.769z"/>
      </g>
    </g>
    <g>
      <g>
        <path d="M100.923,379.077c-36.647,0-66.462,29.814-66.462,66.462S64.276,512,100.923,512c36.647,0,66.462-29.814,66.462-66.462
          S137.57,379.077,100.923,379.077z M100.923,482.462c-20.36,0-36.923-16.563-36.923-36.923c0-20.36,16.563-36.923,36.923-36.923
          c20.36,0,36.923,16.563,36.923,36.923C137.846,465.898,121.283,482.462,100.923,482.462z"/>
      </g>
    </g>
    <g>
      <g>
        <path d="M462.769,401.231h-256c-8.157,0-14.769,6.613-14.769,14.769v59.077c0,8.157,6.613,14.769,14.769,14.769h256
          c8.157,0,14.769-6.613,14.769-14.769V416C477.538,407.843,470.926,401.231,462.769,401.231z M448,460.308H221.538v-29.538H448
          V460.308z"/>
      </g>
    </g>
    <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g>
          </svg>
        </span>
        </div>
      </div>
  


      <div class="grid masonry">
      
        <s:iterator value="list2" >
        
        <div class="masonry__item">
          <figure>
            <figcaption class="content">
              <h2><s:property value="courseName" /></h2>
              <p class="date"><span>课程开课时间</span> 2019/9/1</p>
              <ul class="tags">
                <li><a href="#!">任教老师:<s:property value="teacher" /></a></li>
                <li><a href="#!">课程时间:<s:property value="courseTime" /></a></li>
                <li><a href="#!">课程编号:<s:property value="courseNO" /></a></li>
                <li><a href="#!">课程学分:<s:property value="credit" /></a></li>                      
                <li><a href="#!" class="more" data-click-state="1">+</a></li>
              </ul>
            </figcaption>
          </figure>
        </div>
           
            </s:iterator>            	                                        
      </div>

    </section>
	
	<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.0/plugins/ScrollToPlugin.min.js"></script>
    <script src="https://masonry.desandro.com/masonry.pkgd.js"></script>
    <script src="https://unpkg.com/imagesloaded@4.1.4/imagesloaded.pkgd.min.js"></script>
    <script src="js/demo.js"></script>
</body>
</html>