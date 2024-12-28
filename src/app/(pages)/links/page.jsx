// pages/index.js
import Head from 'next/head';
import styles from './Links.module.css'; // Your CSS module for styles
import BioLayout from '../../_components/BioLayout'; // Import the layout

export default function Home() {
    return (
        <BioLayout>
            <Head>
                <title>Catering Nusantara - Link Bio</title>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
            </Head>
            <div className={styles.container}>
                <div className={styles.profile}>
                    <div className={styles.profileImg}>🍽️</div>
                    <h1 className={styles.profileTitle}>Catering Nusantara</h1>
                    <p className={styles.profileDescription}>Melayani berbagai kebutuhan catering untuk acara Anda</p>
                    <a href="#" className={styles.ctaButton}>Pesan Sekarang</a>
                </div>

                <div className={styles.links}>
                    <a href="#" className={styles.link}>
                        <i className="fas fa-utensils"></i>
                        Menu Catering
                    </a>
                    <a href="#" className={styles.link}>
                        <i className="fab fa-whatsapp"></i>
                        Pesan via WhatsApp
                    </a>
                    <a href="#" className={styles.link}>
                        <i className="fab fa-instagram"></i>
                        Instagram
                    </a>
                    <a href="#" className={styles.link}>
                        <i className="fas fa-calendar-alt"></i>
                        Reservasi Online
                    </a>
                    <a href="#" className={styles.link}>
                        <i className="fas fa-phone"></i>
                        Hubungi Kami
                    </a>
                    <a href="#" className={styles.link}>
                        <i className="fas fa-map-marker-alt"></i>
                        Lokasi Kami
                    </a>
                    <a href="#" className={styles.link}>
                        <i className="fas fa-certificate"></i>
                        Sertifikat Halal
                    </a>
                </div>

                <div className={styles.testimonialSection}>
                    <h2>Testimoni Pelanggan</h2>
                    <p className={styles.testimonial}>“Makanan yang disajikan sangat lezat, layanan yang cepat, dan harga yang terjangkau!”</p>
                    <p className={styles.author}>- Anna, Jakarta</p>
                    <p className={styles.testimonial}>“Saya sangat puas dengan catering dari Nusantara, pasti akan memesan lagi!”</p>
                    <p className={styles.author}>- Budi, Bandung</p>
                </div>
            </div>
        </BioLayout>
    );
}
