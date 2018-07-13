class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    # add_column :DB명, :컬럼명, :타입
    add_column :users, :provider,   :string  # provider는 어디에서 받아온 것인지 ex) 구글
    add_column :users, :name,       :string
    add_column :users, :uid,        :string  # 첫번째로그인 하고나면 더 이상 구글 창이 안 뜨는
  end
end
