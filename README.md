# sistem_informasi_sederhana

Belajar mengenai pembuatan Sistem Informasi Sederhana dengan menggunakan framework CodeIgniter.

# Nama       
Alfian Rochmatul Irman
# NIM        
E41181407
# Golongan  
D

# Konfigurasi

Konfigurasi ini dilakukan didalam `htdocs/(nama_folder)/application/database`

```php
defined('BASEPATH') OR exit('No direct script access allowed');
$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
    'dsn'   => '',
    'hostname' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'ecar',
    'dbdriver' => 'mysqli',
    'dbprefix' => '',
    'pconnect' => FALSE,
    'db_debug' => (ENVIRONMENT !== 'production'),
    'cache_on' => FALSE,
    'cachedir' => '',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
    'swap_pre' => '',
    'encrypt' => FALSE,
    'compress' => FALSE,
    'stricton' => FALSE,
    'failover' => array(),
    'save_queries' => TRUE
);
```
