<?php
/**
 * Created by PhpStorm.
 * User: fatetis
 * Date: 2019/1/9 0009
 * Time: 16:17
 */

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

if (!function_exists('curlLink')) {
    function curlLink($url, $method = 'get', $post_data = 0)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        if ($method == 'post') {
            curl_setopt($ch, CURLOPT_POST, 1);

            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
        } elseif ($method == 'get') {
            curl_setopt($ch, CURLOPT_HEADER, 0);
        }
        curl_setopt($ch, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 跳过证书检查
        $output = curl_exec($ch);
        curl_close($ch);
        return $output;
    }
}

if (!function_exists('isMobile')) {
    function isMobile()
    {
        // 如果有HTTP_X_WAP_PROFILE则一定是移动设备
        if (isset($_SERVER['HTTP_X_WAP_PROFILE'])) {
            return true;
        }
        // 如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息
        if (isset($_SERVER['HTTP_VIA'])) {
            // 找不到为flase,否则为true
            return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
        }
        // 脑残法，判断手机发送的客户端标志,兼容性有待提高。其中'MicroMessenger'是电脑微信
        if (isset($_SERVER['HTTP_USER_AGENT'])) {
            $clientkeywords = array('nokia', 'sony', 'ericsson', 'mot', 'samsung', 'htc', 'sgh', 'lg', 'sharp', 'sie-', 'philips', 'panasonic', 'alcatel', 'lenovo', 'iphone', 'ipod', 'blackberry', 'meizu', 'android', 'netfront', 'symbian', 'ucweb', 'windowsce', 'palm', 'operamini', 'operamobi', 'openwave', 'nexusone', 'cldc', 'midp', 'wap', 'mobile', 'MicroMessenger');
            // 从HTTP_USER_AGENT中查找手机浏览器的关键字
            if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT']))) {
                return true;
            }
        }
        // 协议法，因为有可能不准确，放到最后判断
        if (isset ($_SERVER['HTTP_ACCEPT'])) {
            // 如果只支持wml并且不支持html那一定是移动设备
            // 如果支持wml和html但是wml在html之前则是移动设备
            if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html')))) {
                return true;
            }
        }
        return false;
    }
}

if (!function_exists('isWeixin')) {
    function isWeixin()
    {
        if (strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') !== false) {
            return true;
        } else {
            return false;
        }
    }
}

/**
 * 加密，解密算法
 */
if (!function_exists('authcode')) {
    function authcode($string, $operation, $key = '8kqw')
    {
        $key = md5($key);

        $key_length = strlen($key);
        $string = $operation == 'DECODE' ? base64_decode($string) : substr(md5($string . $key), 0, 8) . $string;

        $string_length = strlen($string);
        $rndkey = $box = array();
        $result = '';

        for ($i = 0; $i <= 255; $i++) {
            $rndkey[$i] = ord($key[$i % $key_length]);
            $box[$i] = $i;
        }

        for ($j = $i = 0; $i < 256; $i++) {
            $j = ($j + $box[$i] + $rndkey[$i]) % 256;
            $tmp = $box[$i];
            $box[$i] = $box[$j];
            $box[$j] = $tmp;
        }
        for ($a = $j = $i = 0; $i < $string_length; $i++) {
            $a = ($a + 1) % 256;
            $j = ($j + $box[$a]) % 256;
            $tmp = $box[$a];
            $box[$a] = $box[$j];
            $box[$j] = $tmp;
            $result .= chr(ord($string[$i]) ^ ($box[($box[$a] + $box[$j]) % 256]));
        }
        if ($operation == 'DECODE') {
            if (substr($result, 0, 8) == substr(md5(substr($result, 8) . $key), 0, 8)) {
                return substr($result, 8);
            } else {
                return '';
            }
        } else {
            return str_replace('=', '', base64_encode($result));
        }
    }
}

/**
 * 加密函数
 */
if (!function_exists('encrypt')) {
    function encrypt($param)
    {
        $encrypted = authcode($param, 'ENCODE', 'vYCxg5Q4QznxNkNe6mMMiDyXJc2ylXfg');
        $encrypted = str_replace(array('+', '/', '='), array('-', '_', '*'), $encrypted);
        return $encrypted;
    }
}

/**
 * 解密函数
 */
if (!function_exists('decrypt')) {
    function decrypt($str)
    {
        $str = str_replace(array('-', '_', '*'), array('+', '/', '='), $str);
        $decrypted = authcode($str, 'DECODE', 'vYCxg5Q4QznxNkNe6mMMiDyXJc2ylXfg');
        return $decrypted;
    }
}


if (!function_exists('randStr')) {
    function randStr()
    {
        return md5(uniqid(rand()));
    }
}

if (!function_exists('randNum')) {
    function randNum($prefix = '')
    {
        $randNum = mt_rand(100000, 999999);

        return $prefix . $randNum;
    }
}

/**
 * 对价格进行向上或向下取整
 * @param $price    价格
 * @param $decimal  保留小数位数
 * @param $type 1：向上 2：向下
 */
if (!function_exists('upDecimal')) {

    function upDecimal($num, $qty = 2, $type = 1)
    {
        $num2 = explode('.', $num);
        $dcmnum = $num2[1] ?? 0;
        $subnum = 0;
        if ($dcmnum > 0) {
            $subnum = bcsub(strlen($dcmnum), $qty, 10);//两数相减
        }
        $powint = bcpow(10, $qty);//指数提升
        $num = bcmul($num, $powint, $subnum);//两数相乘
        $numArr = explode('.', $num);
        $num = $numArr[0];
        $dcm = substr(($numArr[1] ?? 0), 0, $qty+1);
        if ($dcm > 0) {
            if ($type == 1 && $num >= 0) {
                $num = $num + 1;
            } elseif ($type == 2 && $num <= 0) {
                $num = $num - 1;
            }
        }
        return bcdiv($num, $powint, $qty);//两数相除
    }

}

if (!function_exists('urlStandard')) {
    function urlStandard($val)
    {
        return 'images/' . $val . '/' . date('Ymd', time());
    }
}

if (!function_exists('videoUrlStandard')) {
    function videoUrlStandard($val)
    {
        return 'video/' . $val . '/' . date('Ymd', time());
    }
}


if (!function_exists('getARandLetter')) {
    function getARandLetter($number = 1, $prefix = '')
    {
        if ($number == 0)
            return FALSE; //去除0
        $number = $number < 0 ? - $number : $number; //如果小于零取正值
        $letterArr = array ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 1, 2, 3, 4, 5, 6, 7, 8, 9, 0);
        $returnStr = $prefix;
        for($i= 0; $i < $number; $i ++) {
            $returnStr .= $letterArr [rand ( 0, 57 )];
        }
        return $returnStr;
    }
}

/**
 * 单函数  封装报错码
 */
if (!function_exists('r')) {
    function r($code)
    {
        return '错误代码：'.$code;
    }
}

/**
 * 封装json_encode函数
 */
if (!function_exists('je')) {
    function je($data)
    {
        return json_encode($data, JSON_UNESCAPED_UNICODE|JSON_FORCE_OBJECT);
    }
}

/**
 * 封装json_decode函数
 */
if (!function_exists('jd')) {
    function jd($data)
    {
        return json_decode($data, true);
    }
}

/**
 * 获取ip地址
 * @return string ip地址
 */
if (!function_exists('getIP')) {
    function getIP($ipstr = '')
    {
        if ($ipstr) {
            //user_ip|s:9:"127.0.0.1"
            preg_match('/(?:\d{1,3}\.){3}\d{1,3}/is', $ipstr, $arr);
            return $arr [0];
        }
        static $realip = null;
        if ($realip !== null) {
            return $realip;
        }
        //REMOTE_ADDR 是你的客户端跟你的服务器握手时候的IP。如果使用了“匿名代理”，REMOTE_ADDR将显示代理服务器的IP。
        $realip = $_SERVER['REMOTE_ADDR'] ?? '';
        //使用云加速获取真实ip
        if (isset($_SERVER['HTTP_CF_CONNECTING_IP']) && filter_var($_SERVER ['HTTP_CF_CONNECTING_IP'], FILTER_VALIDATE_IP)) {
            $realip = $_SERVER['HTTP_CF_CONNECTING_IP'];
        } //使用cdn后获取真实ip
        elseif (isset($_SERVER['HTTP_CDN_SRC_IP']) && filter_var($_SERVER ['HTTP_CDN_SRC_IP'], FILTER_VALIDATE_IP)) {
            $realip = $_SERVER['HTTP_CDN_SRC_IP'];
            //使用nginx代理模式下,获取客户端真实IP
        } elseif (isset ($_SERVER ['HTTP_X_REAL_IP']) && filter_var($_SERVER ['HTTP_X_REAL_IP'], FILTER_VALIDATE_IP)) {
            $realip = $_SERVER ['HTTP_X_REAL_IP'];
        } //HTTP_CLIENT_IP 是代理服务器发送的HTTP头。如果是“超级匿名代理”，则返回none值（有可能存在，也可以伪造）
        elseif (isset($_SERVER['HTTP_CLIENT_IP']) && filter_var($_SERVER ['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP)) {
            $realip = $_SERVER['HTTP_CLIENT_IP'];
            //HTTP的请求端真实的IP，只有在通过了HTTP 代理(比如APACHE代理)或者负载均衡服务器时才会添加该项 （有可能存在，也可以伪造）
        } elseif (isset($_SERVER['HTTP_X_FORWARDED_FOR']) AND preg_match_all('#\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}#s', $_SERVER['HTTP_X_FORWARDED_FOR'], $matches)) {
            foreach ($matches[0] AS $xip) {
                if (!preg_match('#^(10|172\.16|192\.168)\.#', $xip)) {
                    $realip = $xip;
                    break;
                }
            }
        }
        //验证ip地址合法性
        $realip = filter_var($realip, FILTER_VALIDATE_IP) ? $realip : 'unknown';
        return $realip;
    }

    if (function_exists('ss'))
    {
        function ss($value, $str)
        {
            $val = mb_substr($value,-1,1,'utf8');
            if($val == $str) return mb_substr($value,0,-1,'utf8');
            return $value;
        }
    }

    if (!function_exists('imgoss')) {
        function imgoss($param)
        {
            if (env('FILESYSTEM_DRIVER') == 'alioss') {
                $config = config('filesystems')['disks']['alioss'];
                $timeout = 3600;
                $param = ltrim($param, '/');
                if (strpos($param, 'lock') === false) {
                    $signedUrl = Storage::url($param);
                } else {
                    $ossClient = new OssClient($config['access_id'], $config['access_key'], $config['endpoint'], false);
                    // 生成PutObject的签名URL。
                    $signedUrl = $ossClient->signUrl($config['bucket'], $param, $timeout, "GET");

                }

            } else {
                $signedUrl = asset($param);
            }

            return $signedUrl;
        }
    }

    if (!function_exists('dt')) {
        function dt()
        {
            return date('Y-m-d H:i:s', time());
        }
    }

    if (!function_exists('imgUrl')) {
        function imgUrl($link)
        {
            return env('IMAGE_URL').$link;
        }
    }

    if (!function_exists('elog')) {
        function elog($msg, $throwable)
        {
            Log::error($msg.'。文件目录：'.$throwable->getFile().'.'.$throwable->getLine().'行，异常信息：'.$throwable->getMessage());
        }
    }

}


