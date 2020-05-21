# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create!(
  [
    {
      genre_name: '初心者歓迎'
    }
  ]
)
# Gym.create!(
#   [
#     {
#       email: 'bold@bold',
#       password: 'aaaaaa',
#       genre_id: '1',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～24:00',
#       gym_name: 'BOLD',
#       post_code:'5310075',
#       address: '大阪市北区大淀南1-2-11',
#       phone_number: '0663459000',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'https://bold-gym.com/'
#     },
#     {
#       email: 'minorite@minorite',
#       password: 'aaaaaa',
#       genre_id: '5',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '13:00～23:00',
#       gym_name: 'ミノリテ',
#       post_code:'5890001',
#       address: '大阪市北区大淀南1-2-11',
#       phone_number: ' 0722896059',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'https://minorite.jp/'
#     },
#     {
#       email: 'gura@gura',
#       password: 'aaaaaa',
#       genre_id: '2',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～23:00',
#       gym_name: 'グラビティリサーチなんば',
#       post_code:'5310075',
#       address: '大阪府大阪市中央区難波千日前12-35　スイングよしもとビル3F・4F',
#       phone_number: '0666450631',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'https://www.gravity-research.jp/shop/namba/'
#     },
#     {
#       email: 'sutera@sutera',
#       password: 'aaaaaa',
#       genre_id: '4',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～23:00',
#       gym_name: 'ステラ',
#       post_code:'5950033',
#       address: '大阪府泉大津市板原町４ 大阪府泉大津市板原町2丁目4-3',
#       phone_number: '0725-24-7797',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://stella-climbing.com/'
#     },
#     {
#       email: 'tobito@tobito',
#       password: 'aaaaaa',
#       genre_id: '6',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～24:00',
#       gym_name: 'TOBITO',
#       post_code:'5430054',
#       address: '大阪府大阪市天王寺区南河堀町８−１３',
#       phone_number: ' 0667967187',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://tobito.jp/'
#     },
#     {
#       email: 'kawasemi@kawasemi',
#       password: 'aaaaaa',
#       genre_id: '1',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～23:00',
#       gym_name: 'カワセミ',
#       post_code:'5300057',
#       address: '大阪府大阪市北区北区２ 曽根崎2丁目2-15 KDX東梅田ビル B1F',
#       phone_number: '0669264482',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'https://club-kawasemi.com/'
#     },
#     {
#       email: 'mash@mash',
#       password: 'aaaaaa',
#       genre_id: '4',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '14:00～23:00',
#       gym_name: 'マッシュルーミング',
#       post_code:'5310041',
#       address: '大阪府大阪市北区天神橋７丁目１２−１４ グレーシィ天神橋 103',
#       phone_number: '0668093540',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://mushrooming.co/'
#     },
#     {
#       email: 'mahoroba@mahoroba',
#       password: 'aaaaaa',
#       genre_id: '1',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '10:00～23:00',
#       gym_name: 'マホロバフォレスト',
#       post_code:'5430027',
#       address: '大阪府大阪市天王寺区筆ケ崎町２−１４',
#       phone_number: ' 0667775300',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'https://www.mahorobaforest.com/'
#     },
#     {
#       email: 'crux@crux',
#       password: 'aaaaaa',
#       genre_id: '5',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～23:00',
#       gym_name: 'クラックス大阪',
#       post_code:'564-0052',
#       address: '大阪府吹田市広芝町１６−９',
#       phone_number: '0663106105',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://www.crux-jp.com/cruxosaka/cruxosaka.html'
#     },
#     {
#       email: 'luvrock@luvrock',
#       password: 'aaaaaa',
#       genre_id: '3',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '14:00～22:30',
#       gym_name: 'Luvrock',
#       post_code:'5590013',
#       address: '大阪府大阪市住之江区御崎６丁目２−１０',
#       phone_number: '0666167452',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'https://luvrock.jp/'
#     },
#     {
#       email: 'galera@galera',
#       password: 'aaaaaa',
#       genre_id: '4',

#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '15:00〜23:00',
#       gym_name: 'ガレーラ',
#       post_code:'5510002 ',
#       address: '大阪府大阪市大正区三軒家東２丁目９−３０ ｇａｌｅｒａ',
#       phone_number: ' 0674922746',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://galera-climbing.com/'
#     },
#     {
#       email: 'rockmate@rockmate',
#       password: 'aaaaaa',
#       genre_id: '3',

#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '10:00〜22:30',
#       gym_name: 'ロックメイト 滋賀',
#       post_code:'5202144',
#       address: '滋賀県大津市大萱6丁目1-1',
#       phone_number: '07-7536-5134',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://rockmate.jp/shiga/ootsu/'
#     },
#     {
#       email: 'rukara@rukara',
#       password: 'aaaaaa',
#       genre_id: '6',

#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '13：00～22：30',
#       gym_name: 'Ruka ra Ghaam',
#       post_code:'6170843',
#       address: '京都府長岡京市友岡西畑16-1',
#       phone_number: '075-200-4741',
#       created_at: Time.now,
#       updated_at: Time.now,
#       gym_url: 'http://www.rukaraghaam.jp/2_inst.html'
#     },
#     {
#       email: 'bum@bum',
#       password: 'aaaaaa',
#       genre_id: '2',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～23:30',
#       gym_name: 'BUM',
#       post_code:'5400003',
#       address: '大阪府大阪市中央区森ノ宮中央２丁目１−７０',
#       phone_number: '0666450631',
#       gym_url: 'https://climbingbum.jp/',
#       created_at: Time.now,
#       updated_at: Time.now,
#     },
#     {
#       email: 'noa@noah',
#       password: 'aaaaaa',
#       genre_id: '2',
#       # encrypted_password: 'aaaaaa',
#       # reset_password_sent_at: 'aaaaaa',
#       description: '12:00～23:30',
#       gym_name: 'noah',
#       post_code:'6128414',
#       address: '京都府京都市伏見区竹田段川原町２６４',
#       phone_number: '0756349215',
#       gym_url: 'https://www.cc-noah.com/',
#       created_at: Time.now,
#       updated_at: Time.now,
#     },
#   ]
# )

# Task.create!(
#   [
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '11'
#     },    {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '12'
#     },    {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '1',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '1',
#       task_name: '2番',
#       grade_id: 14
#     },
#     {
#       gym_id: '1',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '2',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '2',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '2',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '3',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '3',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '3',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '4',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '4',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '4',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '5',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '5',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '5',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '6',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '6',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '6',
#       task_name: '3番',
#       grade_id: '14'
#     },


#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '12'
#     },
#     {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '7',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '7',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '7',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '8',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '8',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '8',
#       task_name: '3番',
#       grade_id: '14'
#     },


#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '9',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '9',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '9',
#       task_name: '3番',
#       grade_id: '14'
#     },



#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '10',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '10',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '10',
#       task_name: '3番',
#       grade_id: '14'
#     },




#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '11',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '11',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '11',
#       task_name: '3番',
#       grade_id: '14'
#     },


#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '12',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '12',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '12',
#       task_name: '3番',
#       grade_id: '14'
#     },

#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '13',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '13',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '13',
#       task_name: '3番',
#       grade_id: '14'
#     },


#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '14',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '14',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '14',
#       task_name: '3番',
#       grade_id: '14'
#     },





#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '13'
#     },    {
#       gym_id: '15',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '15',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '15',
#       task_name: '3番',
#       grade_id: '14'
#     },




#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '5'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '6'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '7'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '8'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '9'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '10'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '11'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '13'
#     },
#     {
#       gym_id: '16',
#       task_name: '1番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '16',
#       task_name: '2番',
#       grade_id: '14'
#     },
#     {
#       gym_id: '16',
#       task_name: '3番',
#       grade_id: '14'
#     },
#   ]
# )