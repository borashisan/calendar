# 筋トレボリュームカレンダー

筋トレにおいて筋肥大のためには何キロ持ち上げたかだけではなく何キロを何回何セット持ち上げたかが大事と言われています。
それらを記録するために重量×回数×セット数をボリュームという単位で計算します。
しかしトレーニングメニューを記録している人でもそれらをいちいち計算している人は少ないため、いまいちボリュームはイメージしづらいという人が多いです。
なので数値を入力して記録するだけでカレンダーにボリュームが表示されるカレンダーアプリを作成しました。

## 使用方法

 \#環境によらず実行していただくためにDocker desktopがインストールされている前提で説明させていただきます。
 
起動に必要になりますのでコンテナ内にwebpackerをインストールしてください。
 ```terminal
$docker-compose run web rails webpacker:install
```

続きましてデータベースの作成とマイグレートを実行してください。

 ```terminal
$docker-compose run web rails db:create
```

 ```terminal
$docker-compose run web rails db:migrate
```

docker-compose upを実行した後にlocalhost:3000からアクセスできます。

 ```terminal
$docker-compose up -d
```


