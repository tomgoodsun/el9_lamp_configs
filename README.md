# el9_lamp_configs

Samples of configuration files for LAMP environment on RHEL9

# RHEL9 LAMP環境構築マニュアル

インストール用のOSイメージをダウンロード

- [00.初期設定](00.初期設定.md)
- [01.LAMP環境の構築](01.LAMP環境の構築.md)
- [02.時刻の設定](02.時刻の設定.md)
- [03.Samba（Windowsファイル共有）の設定](03.Samba（Windowsファイル共有）の設定.md)
- [04.ウェブサーバーのセットアップ](04.ウェブサーバーのセットアップ.md)
- [05.PHPのセットアップ](05.PHPのセットアップ.md)
- [06.MySQL Serverのセットアップ](06.MySQL_Serverのセットアップ.md)

## 自動起動設定

以下のデーモンはsystemctlコマンドで自動起動設定（enable）をしておく。
自動起動設定はOS起動時に自動的に立ち上がるソフトウェアを指定すること。

- httpd
- php-fpm
- mysqld
- chrony
- samba

## 最後の設定

ここで一旦rebootして、すべて正常に起動できるかを確認する。

```bash
[root@alma9 ~]# reboot
```

