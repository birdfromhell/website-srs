<?php

use App\Models\Page;
use App\Models\Product;
use App\Models\PaymentGateway;

if (!function_exists('setEnvironmentValue')) {
    function setEnvironmentValue(array $values)
    {

        $envFile = app()->environmentFilePath();
        $str = file_get_contents($envFile);

        if (count($values) > 0) {
            foreach ($values as $envKey => $envValue) {

                $str .= "\n"; // In case the searched variable is in the last line without \n
                $keyPosition = strpos($str, "{$envKey}=");
                $endOfLinePosition = strpos($str, "\n", $keyPosition);
                $oldLine = substr($str, $keyPosition, $endOfLinePosition - $keyPosition);

                // If key does not exist, add it
                if (!$keyPosition || !$endOfLinePosition || !$oldLine) {
                    $str .= "{$envKey}={$envValue}\n";
                } else {
                    $str = str_replace($oldLine, "{$envKey}={$envValue}", $str);
                }
            }
        }

        $str = substr($str, 0, -1);
        if (!file_put_contents($envFile, $str)) return false;
        return true;
    }
}


if (!function_exists('replaceBaseUrl')) {
    function replaceBaseUrl($html)
    {
        $startDelimiter = 'src="';
        $endDelimiter = public_path('/assets/front/img/summernote');
        $startDelimiterLength = strlen($startDelimiter);
        $endDelimiterLength = strlen($endDelimiter);
        $startFrom = $contentStart = $contentEnd = 0;
        while (false !== ($contentStart = strpos($html, $startDelimiter, $startFrom))) {
            $contentStart += $startDelimiterLength;
            $contentEnd = strpos($html, $endDelimiter, $contentStart);
            if (false === $contentEnd) {
                break;
            }
            $html = substr_replace($html, url('/'), $contentStart, $contentEnd - $contentStart);
            $startFrom = $contentEnd + $endDelimiterLength;
        }

        return $html;
    }
}


if (!function_exists('convertUtf8')) {
    function convertUtf8($value)
    {
        return mb_detect_encoding($value, mb_detect_order(), true) === 'UTF-8' ? $value : mb_convert_encoding($value, 'UTF-8');
    }
}


if (!function_exists('make_slug')) {
    function make_slug($string)
    {
        $slug = preg_replace('/\s+/u', '-', trim($string));
        $slug = str_replace("/", "", $slug);
        $slug = str_replace("?", "", $slug);
        return $slug;
    }
}


if (!function_exists('make_input_name')) {
    function make_input_name($string)
    {
        return preg_replace('/\s+/u', '_', trim($string));
    }
}

if (!function_exists('hasCategory')) {
    function hasCategory($version)
    {
        if (strpos($version, "no_category") !== false) {
            return false;
        } else {
            return true;
        }
    }
}

if (!function_exists('isDark')) {
    function isDark($version)
    {
        if (strpos($version, "dark") !== false) {
            return true;
        } else {
            return false;
        }
    }
}

if (!function_exists('slug_create')) {
    function slug_create($val)
    {
        $slug = preg_replace('/\s+/u', '-', trim($val));
        $slug = str_replace("/", "", $slug);
        $slug = str_replace("?", "", $slug);
        return $slug;
    }
}

if (!function_exists('hex2rgb') ) {
    function hex2rgb( $colour ) {
        if ( $colour[0] == '#' ) {
                $colour = substr( $colour, 1 );
        }
        if ( strlen( $colour ) == 6 ) {
                list( $r, $g, $b ) = array( $colour[0] . $colour[1], $colour[2] . $colour[3], $colour[4] . $colour[5] );
        } elseif ( strlen( $colour ) == 3 ) {
                list( $r, $g, $b ) = array( $colour[0] . $colour[0], $colour[1] . $colour[1], $colour[2] . $colour[2] );
        } else {
                return false;
        }
        $r = hexdec( $r );
        $g = hexdec( $g );
        $b = hexdec( $b );
        return array( 'red' => $r, 'green' => $g, 'blue' => $b );
    }
}


if (!function_exists('getHref')) {
    function getHref($link)
    {
        $href = "#";

        if ($link["type"] == 'home') {
            $href = route('front.index');
        } else if ($link["type"] == 'menu_1') {
            $href = route('front.product');
        } else if ($link["type"] == 'menu_2') {
            $href = route('front.product');
        } else if ($link["type"] == 'items') {
            $href = route('front.items');
        } else if ($link["type"] == 'team') {
            $href = route('front.team');
        } else if ($link["type"] == 'career') {
            $href = route('front.career');
        } else if ($link["type"] == 'gallery') {
            $href = route('front.gallery');
        } else if ($link["type"] == 'faq') {
            $href = route('front.faq');
        } else if ($link["type"] == 'blogs') {
            $href = route('front.blogs');
        } else if ($link["type"] == 'contact') {
            $href = route('front.contact');
        } else if ($link["type"] == 'cart') {
            $href = route('front.cart');
        } else if ($link["type"] == 'checkout') {
            $href = route('front.checkout');
        } else if ($link["type"] == 'reservation') {
            $href = route('front.reservation');
        } else if ($link["type"] == 'custom') {
            if (empty($link["href"])) {
                $href = "#";
            } else {
                $href = $link["href"];
            }
        } else {
            $pageid = (int) $link["type"];
            $page = Page::find($pageid);
            if (!empty($page)) {
                $href = route('front.dynamicPage', [$page->slug, $page->id]);
            } else {
                $href = "#";
            }
        }

        return $href;
    }
}



if (!function_exists('create_menu')) {
    function create_menu($arr)
    {
        echo '<ul class="sub-menu">';

        foreach ($arr["children"] as $el) {

            // determine if the class is 'submenus' or not
            $class = 'class="nav-item"';
            if (array_key_exists("children", $el)) {
                $class = 'class="nav-item submenus"';
            }
            // determine the href
            $href = getHref($el);

            echo '<li ' . $class . '>';
            echo '<a  href="' . $href . '" target="' . $el["target"] . '">' . $el["text"] . '</a>';
            if (array_key_exists("children", $el)) {
                create_menu($el);
            }
            echo '</li>';
        }
        echo '</ul>';

    }
}
if (!function_exists('create_other_theme_menu')) {
    function create_other_theme_menu($arr)
    {

        
        echo '<ul class="menu-dropdown">';

        

        foreach ($arr["children"] as $el) {

            // determine if the class is 'submenus' or not
            $class = 'class="nav-link"';
            if (array_key_exists("children", $el)) {
                $class = 'class="nav-link toggle"';
            }
            // determine the href
            $href = getHref($el);

            echo '<li class="nav-item">';
            // echo '<li ' . $class . '>';

            // echo '<a  href="' . $href . '" target="' . $el["target"] . '">' . $el["text"] . '</a>';
            echo '<a '.$class .'href="' . $href . '" >' . $el["text"] . '</a>';
            if (array_key_exists("children", $el)) {
                create_other_theme_menu($el);
            }
            echo '</li>';
        }
        echo '</ul>';

    }
}


if (!function_exists('cartTotal')) {
    function cartTotal()
    {
        $total = 0;
        if (session()->has('cart') && !empty(session()->get('cart'))) {
            $cart = session()->get('cart');
            foreach ($cart as $key => $cartItem) {
                $total += $cartItem['total'];
            }
        }

        return round($total, 2);
    }
}

if (!function_exists('posCartSubTotal')) {
    function posCartSubTotal()
    {
        $total = 0;
        if (session()->has('pos_cart') && !empty(session()->get('pos_cart'))) {
            $cart = session()->get('pos_cart');
            foreach ($cart as $key => $cartItem) {
                $total += $cartItem['total'];
            }
        }

        return round($total, 2);
    }
}


if (!function_exists('tax')) {
    function tax()
    {
        $tax = 0;
        if (session()->has('cart') && !empty(session()->get('cart'))) {
            $cart = session()->get('cart');
            foreach ($cart as $key => $cartItem) {
                $product = Product::find($cartItem['id']);
                $category = $product->category;
                $cTax = $category->tax;

                $tax += ($cTax * $cartItem['total']) / 100;
            }
        }

        return round($tax, 2);
    }
}

if (!function_exists('posTax')) {
    function posTax()
    {
        $tax = 0;
        if (session()->has('pos_cart') && !empty(session()->get('pos_cart'))) {
            $cart = session()->get('pos_cart');
            foreach ($cart as $key => $cartItem) {
                $product = Product::find($cartItem['id']);
                $category = $product->category;
                $cTax = $category->tax;

                $tax += ($cTax * $cartItem['total']) / 100;
            }
        }

        return round($tax, 2);
    }
}

if (!function_exists('posShipping')) {
    function posShipping()
    {
        $shipping = 0;
        if (session()->has('pos_shipping_charge') && !empty(session()->get('pos_shipping_charge'))) {
            $shipping = session()->get('pos_shipping_charge');
        }

        return round($shipping, 2);
    }
}


if (!function_exists('paytabInfo')) {
    function paytabInfo()
    {
      // Could please connect me with a support.who can tell me about live api and test api's Payment url ? Now, I am using this https://secure-global.paytabs.com/payment/request url for testing puporse. Is it work for my live api ???
      // paytabs informations
      $paytabs = PaymentGateway::where('keyword', 'paytabs')->first();
      $paytabsInfo = json_decode($paytabs->information, true);
      if ($paytabsInfo['country'] == 'global') {
        // $url = 'https://secure-global.paytabs.com/payment/request';
        $currency = 'USD';
      } elseif ($paytabsInfo['country'] == 'sa') {
        // $url = 'https://secure.paytabs.sa/payment/request';
        $currency = 'SAR';
      } elseif ($paytabsInfo['country'] == 'uae') {
        // $url = 'https://secure.paytabs.com/payment/request';
        $currency = 'AED';
      } elseif ($paytabsInfo['country'] == 'egypt') {
        // $url = 'https://secure-egypt.paytabs.com/payment/request';
        $currency = 'EGP';
      } elseif ($paytabsInfo['country'] == 'oman') {
        // $url = 'https://secure-oman.paytabs.com/payment/request';
        $currency = 'OMR';
      } elseif ($paytabsInfo['country'] == 'jordan') {
        // $url = 'https://secure-jordan.paytabs.com/payment/request';
        $currency = 'JOD';
      } elseif ($paytabsInfo['country'] == 'iraq') {
        // $url = 'https://secure-iraq.paytabs.com/payment/request';
        $currency = 'IQD';
      } else {
        // $url = 'https://secure-global.paytabs.com/payment/request';
        $currency = 'USD';
      }
      return [
        'server_key' => $paytabsInfo['server_key'],
        'profile_id' => $paytabsInfo['profile_id'],
        'url'        => $paytabsInfo['api_endpoint'],
        'currency'   => $currency,
      ];
    }
  }
