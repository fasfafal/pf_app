# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
### ■画面遷移図
https://www.figma.com/design/BLUZ9k6eQsGVWlM3ZCxetM/%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0-1&t=0SccTXVUOmQybcyN-1
### ■サービス概要
献血をしている方々のコミュニティを重点的においた献血ルームの口コミサービスと予約や献血当日になるとLINEなどのアラームで教えてくれるシステム。

### ■ このサービスへの思い・作りたい理由

僕が以前から地元のボランティアサークルで献血の啓発活動を行った時に、どうしてもバスなどの突発的な献血ルームの案内や人を呼ぶことに苦労をした。
僕自身が献血に行く際は現時点で存在している献血のラブラットのアプリやXでは
献血のコミュニティとしての役割が弱く献血をする際には孤独や他の人と会話をすることが少ない。

一つの献血ルームを利用する人が多く、別の献血ルームを利用しようと考える人も少ない。
このサービスを作ることによって利用者同士のコミュニティが大きくなったり
お互いに話をすることができたり献血利用者が増えるようになってほしい。


### ■ ユーザー層について
決めたユーザー層についてどうしてその層を対象にしたのかそれぞれ理由を教えてください。
20歳から40歳の男女
40歳以上だと管理職になり仕事が忙しくなって
献血に行く回数が少なくなる。
生活習慣病になって献血ができなくなることがある為、対象外とする。

### ■サービスの利用イメージ
ユーザーがこのサービスをどのように利用できて、それによってどんな価値を得られるかを簡単に説明してください。
ユーザーがサービスを利用することによって横のつながりが増やす価値と「あの人も行くから献血行ってみよう」という気持ちや「別の献血ルームにも行ってみよう」という気持ちになり献血ルームを利用する人たちが増えると考えられる。

### ■ ユーザーの獲得について
想定したユーザー層に対してそれぞれどのようにサービスを届けるのか現状考えていることがあれば教えてください。
共通　コミュニティの構築できることと予約した日を忘れないようにする

### ■ サービスの差別化ポイント・推しポイント
似たようなサービスが存在する場合、そのサービスとの明確な差別化ポイントとその差別化ポイントのどこが優れているのか教えてください。
・独自性の強いサービスの場合、このサービスの推しとなるポイントを教えてください。
・献血に来られた方々の横のつながりを増やす。
・赤十字が企画するイベントのみではなくボランティア団体が
企画するイベントにもスポットが当たるようにしたい。
・都道府県別で献血後に貰えるものを記録できる機能がある。
・血液型別のコミュニティを作ることができる。
■ 機能候補
現状作ろうと思っている機能、案段階の機能をしっかりと固まっていなくても構わないのでMVPリリース時に作っていたいもの、本リリースまでに作っていたいものをそれぞれ分けて教えてください。
コミュニティが成立するためのトピック
ユーザー登録認証
イベント告知をするための掲示板
### MVPリリース
-ユーザー登録
　　ー名前・ニックネーム・メールアドレス・パスワード・血液型
-ログイン
-パスワード機能
  -アドレス変更
-血液型別マッチング機能
  -交流を行う掲示板機能
-血液型別掲示板の作成
-献血センター一覧機能(MVPの場合、関東限定とする。)
  -掲示板機能
    -制作機能（ユーザー登録をしている人達が献血のコミュニティで話し合ってユーザー登録していない人は閲覧のみできる。）
    -閲覧機能
  -イベント情報機能
    -制作機能（ユーザー登録をしている人達が活用できるイベント情報。ユーザー登録していない人は閲覧のみできる。）
    -閲覧機能
-LINE通知機能

### MVP以降
-献血ルーム近辺のカフェ登録機能
-利用規約機能
-プライバシーポリシー機能
■ 機能の実装方針予定
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。
・地図アプリ
・登録認証はsorceryかdeviseを検討中
・予約した日にちをLINEなどで通知する機能
・イベント告知とコミュニティのための掲示板
・ページネイトをするためにkaminariの導入

##　ER図
[![Image from Gyazo](https://i.gyazo.com/f91ab074381a8b2dafb0a3a11382cbf4.png)](https://gyazo.com/f91ab074381a8b2dafb0a3a11382cbf4)

## ER図
 erDiagram
 free_posts_comment }o--|| users :""
 blood_posts_comment }o--|| users: ""
 events_comment }o--|| users: ""
 free_posts||--o{ free_posts_comment :""
 blood_posts ||--o{ blood_posts_comment: ""
 events ||--o{ events_comment: ""
 
 
 users {
        int id "PK"
        string email
        string name
        string encrypted_password
        string salt
        int blood 
        binary icon
        datetime created_at
        datetime updated_at
    }

 free_posts {
        int id "PK"
        int user_id "FK"
        string title
        string body
        binary icon
        datetime created_at
        datetime updated_at
    }
 blood_posts{
        int id "PK"
        int user_id "FK"
        string title
        string body
        bainary icon
        datetime created_at
        datetime updated_at
    }

 events {
        int id "PK"
        int user_id "FK" 
        string title 
        string body
        bainary icon
        datetime created_at
        datetime updated_at
    }
 free_posts_comment{
        int id "PK"
        int user_id "FK"
        int free_posts_id "FK"
        int content
    }
  blood_posts_comment{
        int id "PK"
        int user_id "FK"
        int blood_posts_id "FK"
        int content
    }
  events_comment{
        int id "PK"
        int user_id "FK"
        int event_posts_id "FK"
        int content
    }

