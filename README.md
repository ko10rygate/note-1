###やること
* HAProxyを使ってロードバランシング
* スクリプトのオプションでカナリアリリース

Dockerfileの文法
* http://www.atmarkit.co.jp/ait/articles/1407/08/news031.html#032

HAProxyを試す
* http://momijiame.tumblr.com/post/71727083520/centos-6-5-haproxy

Serf+HAProxyで作るAutomatic Load Balancer
* http://blog.glidenote.com/blog/2013/10/30/serf-haproxy/
* http://deeeet.com/writing/2014/04/08/docker-serf-haproxy/
* http://deeeet.com/writing/2014/04/01/serf-haproxy/

###更新前イメージの作り方

```
docker run -itd -rm --name temp yujilow/node /bin/bash
docker commit temp yujilow/node_old
docker stop temp
docker build -t yujilow/node .
docker stop new
```
