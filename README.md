20180706

- input 창에 글자를 한 글자 입력(이벤트)할 때마다(이벤트리스너)
- server로 해당 글자를 검색하는 요청을 보내고
- 응답으로 날아온 영화제목 리스트를 화면에 보여준다.



respond to

- 이 코드를 사용하지 않으면 메소드 명과 동일한 erb파일을 찾아간다. 하지만 다른 경로로 보낼 경우에는 명시해야한다.

    def search_movie
        respond_to do |format|
          if params[:q].strip.empty?# 빈칸일 때(스페이스바만 눌렀을때도 돌아가도록 strip사용)
            # render nothing: true#반응하지마라
            format.js {render 'no_content'}# no_content.erb파일로 가라
          else
            @movies = Movie.where("title LIKE ?","#{params[:q]}%")#여러개 찾아야 하니까 where을 사용
            format.js {render 'search_movie'} # search_movie.erb파일로 가라 
          end
        end
      end



kaminari

gemfile에 gem 'kaminari'를 추가

https://github.com/kaminari/kaminari

보여줄 객체를 정의해 놓은 rb파일에 paginates_per 8을 추가 -> 한 페이지에 8개씩만 보여주는 역할을 한다.

2번째 페이지를 보고싶은 경우 

https://rails-tutorial-wonwon.c9users.io/movies?page=2




