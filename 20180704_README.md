20180705 Day_18

- 좋아요 버튼 + 개수 넣고 변화하는 것
- 댓글 (ajax) 입력 + 삭제 + 수정
  - 댓글 입력시 글자제한 (front + back)
- 별점주기 (좋아요에 컬럼을 추가하는 방식  -> score를 추가하는) > 시간있으면 하는
- pagination ( kaminari )
- hashtag ( 중복제목, 중복 id )



Ajax

- front-end javascript
- 버튼을 하나 누를때마다 서버에 요청하는 것은 너무 비효율적이라 고안해낸 방법

    $.ajax({
        url
    });

- url을 route에서 지정을 해줘야 한다.



댓글

- 댓글을 입력받을 폼을 생성
- form(요소)이 제출(이벤트)될 때(이벤트 리스너)
- form에 input(요소)안에 있는 내용물(메소드)을 받아서
- ajax 요청으로 서버에 '/create/comment'로 요청을 보낸다.
- 보낼 때에는 내용물, 현재 보고있는 movie의 id값도 같이 보낸다.
- 서버에서 저장하고, response 보내줄 js.erb 파일을 작성한다.
- js.erb 파일에서는 댓글이 표시될 영역에 등록된 댓글의 내용을 추가해준다.

Routes.rb resources를 중복 사용가능

      resources :movies do
        member do
          post '/commets' => 'movies#create_comment' #id가 붙는 -> /movies/:movie_id/test
        end
        end
     	  collection do
          get '/test' => 'movies#test_collection'  #id가 붙지 않는  -> /movies/test
        end
      end 

- 댓글에 있는 삭제버튼(요소)을 누르면 (이벤트 리스너)
- 해당 댓글이 눈에 안보이게 되고, (이벤트 핸들러)
- 실제 DB에서도 삭제가 된다. (Ajax)



수정

- 수정 버튼을 클릭하면
- 댓글이 있던 부분이 입력창으로 바뀌면서 원래있던 댓글의 내용이 입력창에 들어간다.
- 수정버튼은 확인버튼으로 바뀐다.

---

- 내용 수정 후 확인 버튼을 클릭하면

- 입력창에 있던 내용물이 댓글의 원래형태로 바뀌고
- 확인 버튼은 다시 수정버튼으로 바뀐다.
- 입력창에 있던 내용물을 ajax로 서버에 요청을 보낸다.
- 서버에서는 해당 댓글을 찾아 내용을 업데이트한다.



*jQuery의 parent()

https://api.jquery.com/parentsUntil/

- 수정버튼을 누르면
- 전체문서 중에서 update-comment클래스를 가진 버튼이 있는 경우에
- 더 이상 진행하지 않고 이벤트 핸들러를 끝냄( return false; )


