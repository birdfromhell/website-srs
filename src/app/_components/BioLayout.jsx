// components/BioLayout.js
import styles from './BioLayout.module.css'; // Optional: for any specific styles

export default function BioLayout({ children }) {
    return (
        <div className={styles.bioContainer}>
            {children}
        </div>
    );
}
