Docker Apache Bind Hosts to Directories Demo
==============================================

让不同的域名访问不同的目录。

需要在`/etc/hosts`里加上：

```
127.0.0.1 aaa.test
127.0.0.1 bbb.test
```

注意，如果使用`localhost:10080`访问时，它找不到对应的设置，会使用第一个`VirtualHost`即`aaa.test`对应的配置。

```
npm run up
```

```
npm run down
```
