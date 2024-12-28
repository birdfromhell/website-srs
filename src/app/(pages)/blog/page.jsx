import dynamic from "next/dynamic";
import AppData from "@data/app.json";

import PageBanner from "@components/PageBanner";

export const metadata = {
  title: {
    default: "Blog",
  },
  description: AppData.settings.siteDescription,
}

function Blog() {
  return (
    <>
      <PageBanner pageTitle={"Our Blog"} breadTitle={"Blog"} />

      {/* Under Maintenance Section */}
      <section className="sb-maintenance sb-p-90-90">
        <div className="container">
          <div className="sb-maintenance-content text-center">
            <i className="fas fa-tools sb-mb-30" style={{fontSize: '48px', color: '#666'}}></i>
            <h2 className="sb-mb-30">Under Maintenance</h2>
            <div className="sb-text sb-mb-30">
              <p>We're currently working on improving our blog feature.</p>
              <p>Please check back soon for updates!</p>
            </div>
            <div className="maintenance-status">
              <div className="status-indicator">
                <span className="dot"></span>
                <span className="text">Development in Progress</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <style jsx>{`
        .sb-maintenance-content {
          padding: 60px 20px;
          background: #fff;
          border-radius: 10px;
          box-shadow: 0 0 20px rgba(0,0,0,0.05);
        }
        .maintenance-status {
          display: inline-block;
          padding: 10px 20px;
          background: #f8f9fa;
          border-radius: 30px;
        }
        .status-indicator {
          display: flex;
          align-items: center;
          justify-content: center;
          gap: 10px;
        }
        .dot {
          width: 10px;
          height: 10px;
          background: #ffc107;
          border-radius: 50%;
          animation: blink 1.5s infinite;
        }
        .text {
          color: #666;
          font-size: 14px;
        }
        @keyframes blink {
          0% { opacity: 0.4; }
          50% { opacity: 1; }
          100% { opacity: 0.4; }
        }
      `}</style>
    </>
  );
};

export default Blog;
