# SQL Server SSL 配置方法

云数据库 MySQL, MariaDB, Percona 连接方式支持明文的，也支持加密的，如果要支持加密的连接方式，需要在连接参数中配置 SSL 证书。 采用加密的连接方式，即使你通过公网访问云数据库 MySQL, MariaDB, Percona，即使数据传输内容被截获，传输内容也是被加密的，无法被识别。
