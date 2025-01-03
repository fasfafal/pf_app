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

[画面遷移図](https://github.com/fasfafal/pf_app/blob/main/README.md#%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3)

[サービス概要](https://github.com/fasfafal/pf_app?tab=readme-ov-file#%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9%E6%A6%82%E8%A6%81)

[技術スタック](https://github.com/fasfafal/pf_app/blob/main/README.md#%E6%8A%80%E8%A1%93%E3%82%B9%E3%82%BF%E3%83%83%E3%82%AF)

[このサービスへの思い・作りたい理由](https://github.com/fasfafal/pf_app/blob/main/README.md#-%E3%81%93%E3%81%AE%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9%E3%81%B8%E3%81%AE%E6%80%9D%E3%81%84%E4%BD%9C%E3%82%8A%E3%81%9F%E3%81%84%E7%90%86%E7%94%B1)

[ユーザー層について](https://github.com/fasfafal/pf_app?tab=readme-ov-file#-%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E3%81%AE%E7%8D%B2%E5%BE%97%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)

[サービスの利用イメージ](https://github.com/fasfafal/pf_app#%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9%E3%81%AE%E5%88%A9%E7%94%A8%E3%82%A4%E3%83%A1%E3%83%BC%E3%82%B8)

[ユーザーの獲得について](https://github.com/fasfafal/pf_app/blob/main/README.md#-%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E3%81%AE%E7%8D%B2%E5%BE%97%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)

[サービスの差別化ポイント・推しポイント](https://github.com/fasfafal/pf_app/blob/main/README.md#-%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9%E3%81%AE%E5%B7%AE%E5%88%A5%E5%8C%96%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E6%8E%A8%E3%81%97%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88)

[MVPリリース](https://github.com/fasfafal/pf_app/blob/main/README.md#mvp%E3%83%AA%E3%83%AA%E3%83%BC%E3%82%B9)

[MVP以降](https://github.com/fasfafal/pf_app/blob/main/README.md#mvp%E4%BB%A5%E9%99%8D)
### ■画面遷移図
https://www.figma.com/design/BLUZ9k6eQsGVWlM3ZCxetM/%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0-1&t=0SccTXVUOmQybcyN-1
### ■サービス概要
献血をしている方々のコミュニティを重点的においた献血ルームの口コミサービスと予約や献血当日になるとLINEなどのアラームで教えてくれるシステム。
### ■技術スタック
HTML
SCSS
Ruby on Rails
Postgre SQL

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
・LINEを使ったログイン認証
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
  -掲示板機能
    -制作機能（ユーザー登録をしている人達が献血のコミュニティで話し合ってユーザー登録していない人は閲覧のみできる。）
    -閲覧機能

### MVP以降
-イベント情報機能
  -制作機能（ユーザー登録をしている人達が活用できるイベント情報。ユーザー登録していない人は閲覧のみできる。）
  -閲覧機能
-利用規約機能
-プライバシーポリシー機能
■ 機能の実装方針予定
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。
・地図アプリ
・予約した日にちをLINEなどで通知する機能
・イベント告知とコミュニティのための掲示板
・ページネイトをするためにkaminariの導入

##　ER図
[![Image from Gyazo](https://i.gyazo.com/a1ec9e5d10e1410edd287f1f87a48fe5.png)](https://gyazo.com/a1ec9e5d10e1410edd287f1f87a48fe5)
