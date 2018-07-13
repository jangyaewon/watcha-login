# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ["Horror", "Thriller", "Action", "Drama", "Comedy", "Romance", "SF", "Adventure",]
images = ["http://post.phinf.naver.net/20160709_251/onbody2_1468031721561v2oOV_PNG/mug_obj_201607091135222674.jpg",
"http://post.phinf.naver.net/MjAxODA1MTBfMjgw/MDAxNTI1OTQyNDQ3NDIz.IlecTsLhnQE9GXCISsMDY3wLyO93nDR14wFX0iEKgDwg.KWSL7DWS_eBgHArv874L0MO8ANyZfybtt_j5KItRmbwg.JPEG/INHdC2DKlV4B4IIiJCOdGQ6qlnVk.jpg",
"http://post.phinf.naver.net/MjAxNzEwMDRfMTI5/MDAxNTA3MDUwNTIyMzg4.EZ4Axrun9umPS2geDT7TVdQfrDelaGoU6qCyj0hqJWIg.3PWH1sXwe37u1QKHMq8pvTLt-Bzh36bXxId0Qb8Osz8g.JPEG/I2ANEF00MQCowR7vUtUjeXCKL1ds.jpg",
"http://post.phinf.naver.net/MjAxNjExMThfMjg0/MDAxNDc5NDcxNTM4OTUy.RCrHbIZKcQNRAwL8IfoyMZkj_cNH8Czych5kMksL3ysg.VbLvNiRwZj8yx57U3CsCDXeZd0wRXILMw1JaEL6geRMg.JPEG/IN12kNTsfAskXEs-_3BQjIoqY3ew.jpg",
"http://post.phinf.naver.net/MjAxNjExMDlfMjIg/MDAxNDc4NjYwMDYzNjY3.vr-QSl_bGFC165hkTbY571sqPE8Tr4ZgFQo029OT81cg.lgE1qy2Xr-InQ0FWrzN7W5oLYNYFnZXCAr9mjj550e4g.PNG/IQkIqIs_LK93ldTmX_RCI50rGeM0.jpg",
"http://image.ytn.co.kr/general/jpg/2017/1119/201711191129585799_d.jpg",
"http://blogfiles11.naver.net/20150219_66/hanmesan68_1424340114756iG942_JPEG/%C0%CE%C5%CD%B3%DD%C0%CE%B1%E2%C8%AD%C1%A6%BB%E7%C1%F8_%B5%F0%C1%EE%B4%CF_%BE%D6%B4%CF%B8%DE%C0%CC%BC%C7_%B0%F8%C1%D6%B4%D4%B5%E9_%C7%EC%BE%EE%BD%BA%C5%B8%C0%CF_%C7%F6%BD%C7%BF%A1%BC%B1_%A4%BB_13.jpg",
"http://post.phinf.naver.net/MjAxNjEyMDdfMTAy/MDAxNDgxMTE4OTgxMTM0.k_PlYfRFz3h_kmZhd8Y05JgEvG9Mit0_ZLzyct_-TaUg.--MRr5HmJ7FOgX75aLp0-_v_Gb02JxGH_OmjHTGCGwcg.JPEG/IN0f1NI7IkxWNTNQ7UezUHJ1rC08.jpg",
"http://cafefiles.naver.net/20110121_262/noella1215_1295576639053rIb4E_jpg/img_0420_noella1215.jpg",
"http://post.phinf.naver.net/MjAxNzA3MTBfNzcg/MDAxNDk5Njc2OTYzMzA4.ZxfDLSr4mM5L6oojBiLszAppaT56SmVhia4phPt8hAkg.fyJSr2ZLeY_iNK8atnXcjmUqCofLXVqUq9QRUZm60Ogg.JPEG/ILioNi4s0eApserb2zZEhA8nzlDU.jpg",
"http://www.thebucheon.com/upload/article/img/1315637280_Little.jpg",
"http://blogfiles5.naver.net/20131230_101/hicatdog_1388401055496uiHjP_JPEG/The-Aristocats-the-aristocats-4398028-768-576-500x375.jpg",
"http://post.phinf.naver.net/20130927_108/dnwjddn89_1380215293279R8nCj_JPEG/mug_obj_201309270208176730.jpg"]

30.times do
    Movie.create(title: Faker::Movie.quote, director: Faker::HarryPotter.character,
                         user_id: 1, remote_image_path_url: images[rand(13)] ,genre: genres[rand(8)])
end