// pages/_app.js atau di page tertentu
import Script from 'next/script';

function MyApp({ Component, pageProps }) {
  return (
    <>
      <Script 
        src="https://d2mpatx37cqexb.cloudfront.net/delightchat-whatsapp-widget/embeds/embed.min.js" 
        strategy="afterInteractive"
      />
      <Script 
        id="whatsapp-widget"
        strategy="afterInteractive"
      >
        {`
          var wa_btnSetting = {
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
          window.onload = () => {
            _waEmbed(wa_btnSetting);
          };
        `}
      </Script>
      <Component {...pageProps} />
    </>
  );
}

export default MyApp;
    
