20180703 _ Rails Tutorial

    $ ruby -v
        ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]
    $ gem install rails -v 5.0.7
    $ rails _5.0.7_ new watcha_app
    $ rails g scaffold movies
    

- Watch (영화정보 저장)
- scaffold
  - 카미나리?? 페이지??
- user authenticated (devise)
- comment model
- image upload (local)

    #beauty
    gem 'bootstrap', '~> 4.1.1'
    # authentication
    gem 'devise'
    # file upload
    gem 'carrierwave'
    
    # 내용물을 보기 위한
    group :development do
        gem 'rails_db'
    end 
    
    #gem 'turbolinks', '~> 5'
    

application.js

    //= require turbolinks
    //= require_tree .				삭제
    ------------------------------------
    //= require popper			추가
    //= require bootstrap

application.scss에 @import 'bootstrap';추가

application.html

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
    -------------------------------------------------------------------------------------
       <%= stylesheet_link_tag    'application', media: 'all' %>
        <%= javascript_include_tag 'application'%>
      </head>
    
      <body>
        <% falsh.each do |k,v| %>
        <div class="alert alert-<%= k%>"><%= v%></div>
        <% end  %>
        <%= yield %>



development.rb에 

      # Don't care if the mailer can't send.
      config.action_mailer.raise_delivery_errors = false
      config.action_mailer.perform_caching = false
      
      # 추가
      config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

$  rails g devise users

    $ sudo apt-get update
    $ sudo apt-get install imagemagick
    
    gemfile에 gem 'mini_magick'추가 -> bundle install



- 기본적인 JS 설명 (front)

Element는 처음 발견된 하나만 나오고 Elements는 해당하는 것들이 다 나온다.



ID는 하나만 나와야 하므로 Element이다



querySelector로치면 먼저 발생한 하나만 꺼내오지만 querySelectorAll은 다 가져온다.



- 변수선언 후 사용





- 요소 찾는 방법
  - "이벤트"사용
    - 이벤트 감지 (이벤트 리스너)  ->  행동(행위) 발생         
    - 요소.onClick = 어떤 행동   
      - btns[0].onmouseover = function() {alert("건드리지마!");}
  
- 이벤트 등록하는 방법
  - 요소.on이벤트이름 = function( 매개변수 ) {   }
  -    이벤트 리스너	         이벤트 핸들러
  

1. 마우스를 오버하면 "건드리지마"라는 alert()를 띄운다.
2. 3번 이상 '건드리지말라고'라는 alert()를 띄운다.  

---

    var btn = document.getElementsByClassName("btn")[0];
    var count = 0;
    var msg = "나 건드리지마!!";
    
    btn.onmouseover = function(){
        count += 1;
        if(count > 3){
            msg = "아 진짜 짜증나게 하네";
        }
        alert(msg);
    }

    console.dir(btn)
    	onmouseover:ƒ () // 값이 들어가 있다.



    << 함수 선언식 >>
    
    func(); //가능
    var func = function(){
        alert("하하");
    }
    func(); //가능
    -------------------------------------------------------------------------------------
    << 함수 표현식 >>    
        
    func1(); //불가능  -> 선언되기 이전에는 사용할 수 없다.  
    function func1(){
        alert("하이");
    }
    func1(); //가능
    --------------------------------------------------------------------------------------
    var btn = document.getElementsByClassName("btn")[1];
    btn.addEventListener("mouseover", function(){ //익명함수
        alert("하위");
    })
    
    console.dir(btn)
    	// onmouseover:null 위에와는 달리 값이 들어와있지 않다.
    var btn = document.getElementsByClassName("btn")[0];
    btn.addEventListener("mouseover", func1); // func1()로 하면 실행이 안된다.
    
    var btn2 = document.getElementsByClassName("btn")[1];
    btn2.onmouseover = func;
    
    // 먼저 선언되어 있단 함수를 이벤트 핸들러로 사용할 경우
    // 함수 이름만 적어서 사용한다.
    // 함수이름() <- 이 형태는 함수의 실행을 의미한다.
    ------------------------------------------------------------------------------------    

    //버튼(요소)에 마우스를 오버(이벤트) 했더니(이벤트리스너)
    // 그 위에 있던 글자들(요소)이 갑자기 이상한 글자로 변해버렸다.(이벤트 핸들러)
    var mtitle = document.getElementsByClassName("card-title")[0].innerText
    
    var btn = document.getElementsByClassName("btn")[0];
    btn.addEventListener("mouseover",function(){
      var title = document.getElementsByClassName("card-title")[0];
      console.dir(title);
      title.innerText = "건드리지마";
    });
    btn.addEventListener("mouseleave",function(){
      var title = document.getElementsByClassName("card-title")[0];
      
      title.innerText = mtitle;
    });
    

< div   class = "card" data-id="1" ></div>

여는태그  속성명   속성값

    // 버튼(요소)에 마우스를 올리면(이벤트, 이벤트 리스너) 
    //해당 버튼의 class가 btn btn-danger로 변함
    var btn = document.getElementsByClassName("btn")[0];
    btn.addEventListener("mouseover", function(){
      btn.setAttribute("class","btn btn-danger disabled");
    })
    btn.addEventListener("mouseout", function(){
      btn.setAttribute("class","btn btn-info");
    })



- 이벤트 동작시키기 + jQuery +ajax
- 댓글 달기 + 수정  + 삭제
- 좋아요 + 별점
- infinity scroll



- 사용자 기능 정의
  - 페이지 시나리오
    - 회원가입
    - 메인페이지
    - 게시판 목차
    - 게시판 입력창
    - 게시판 수정창(입력창)
    - 게시글 보기창
    - .....

