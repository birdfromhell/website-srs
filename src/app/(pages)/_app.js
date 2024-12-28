import Script from 'next/script';
import { useEffect } from 'react';

function MyApp({ Component, pageProps }) {
  useEffect(() => {
    // Pastikan script dimuat setelah komponen render
    const loadWhatsAppWidget = () => {
      if (window._waEmbed) {
        const wa_btnSetting = {
          "btnColor":"#16BE45",
          "ctaText":"Hubungi Kami ",
          "cornerRadius":40,
          "marginBottom":20,
          "marginLeft":20,
          "marginRight":20,
          "btnPosition":"right",
          "whatsAppNumber":"6281220938133",
          "welcomeMessage":"Hi Saya Ingin Bertanya Tentang Catering",
          "zIndex":999999,
          "btnColorScheme":"light"
        };
        
        try {
          window._waEmbed(wa_btnSetting);
        } catch (error) {
          console.error("WhatsApp Widget Error:", error);
        }
      }
    };

    // Tunggu hingga script selesai dimuat
    if (document.readyState === 'complete') {
      loadWhatsAppWidget();
    } else {
      window.addEventListener('load', loadWhatsAppWidget);
    }

    return () => {
      window.removeEventListener('load', loadWhatsAppWidget);
    };
  }, []);

  return (
    <>
      <Script 
        src="https://d2mpatx37cqexb.cloudfront.net/delightchat-whatsapp-widget/embeds/embed.min.js" 
        strategy="afterInteractive"
        onLoad={() => {
          console.log("WhatsApp Script Loaded");
        }}
        onError={(error) => {
          console.error("WhatsApp Script Load Error:", error);
        }}
      />
      <Component {...pageProps} />
    </>
  );
}

export default MyApp;
