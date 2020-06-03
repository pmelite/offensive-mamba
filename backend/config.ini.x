[Common]
timeout        : 10
max_attempt    : 5
save_path      : trained_data
save_file      : DeepExploit.ckpt
data_path      : data
signature_path : signatures
plot_file      : trained_result.png
con_retry      : 3
port_div       : :

[MetasploitCannon]
server_host    : 115.186.176.141
server_port    : 55552
msgrpc_user    : msf
msgrpc_pass    : msfFYP

[Utility]
http_timeout    : 3.0
max_target_url  : 100
max_target_byte : 10000
scramble        : 1

[State]
os_type     : windows@unix@solaris@osx@netware@linux@irix@hpux@freebsd@firefox@dialup@bsdi@apple_ios@android@aix@unknown
services    : vsftpd@ssh@telnet@postfix@bind@apache@rpc@samba@java@proftpd@mysql@postgresql@vnc@irc@jetty@tomcat@ldap@nginx@php@phpmyadmin@wordpress@joomla@drupal@sugarcrm@webmin@moodle@dav@oscommerce@tikiwiki@phpbb@mediawiki@unix@python@ubuntu@http@ms-wbt-server@upnp

[A3C]
train_worker_num  : 20
train_max_num     : 5000
train_max_steps   : 20
train_tmax        : 5
test_worker_num   : 1
greedy_rate       : 0.8

[Metasploit]
lport           : 4444
proxy_host      : 127.0.0.1
proxy_port      : 1080
prohibited_list : 192.168.220.1@192.168.220.2@192.168.220.254
path_collection : path@uri@dir@folder@file

[Nmap]
command        : nmap -p0-65535 -T5 -Pn -sV -sT --min-rate 1000 -oX
timeout        : 600
second_command : proxychains nmap -Pn -sV -sT -A -r -p 1-10000 -scan-delay 0ms -oX
second_timeout : 3000

[Report]
date_format        : %%Y/%%m/%%d %%H:%%M:%%S
report_test        : report
report_test_file   : DeepExploit_test_report.html
template_test      : template_test.html
report_train       : train
report_train_file  : DeepExploit_train_report.html
template_train     : template_train.html
header_train       : date@ip@port@protocol@service@version@vuln_name@description@type@exploit@target@payload@reference
header_test        : date@ip@port@src_ip@protocol@service@version@vuln_name@description@type@exploit@target@payload@reference

[VersionChecker]
signature_file : signature_product.txt

[VersionCheckerML]
category            : CMS
train_path          : train_data
trained_path        : trained_data
train_os_in         : train_os_in.txt
train_os_out        : train_os_out.pkl
train_web_in        : train_web_in.txt
train_web_out       : train_web_out.pkl
train_framework_in  : train_framework_in.txt
train_framework_out : train_framework_out.pkl
train_cms_in        : train_cms_in.txt
train_cms_out       : train_cms_out.pkl

[ContentExplorer]
signature_file   : signature_default_content.txt
delay_time       : 1.0

[Spider]
output_base_path  : crawl_result
output_filename   : _crawl_result.json
concurrent_reqs   : 1
depth_limit       : 2
delay_time        : 3.0
time_out          : 300
item_count        : 50
page_count        : 50
error_count       : 0
