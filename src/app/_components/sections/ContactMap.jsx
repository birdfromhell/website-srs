"use client";

import { useEffect, useState, useRef } from "react";
import { mapboxInit } from "@common/mapboxInit";

const ContactMapSection = () => {
  const [mapLock, setMapLock] = useState(false);
  const [mapError, setMapError] = useState(null);
  const mapContainerRef = useRef(null);
  const mapInstanceRef = useRef(null);

  useEffect(() => {
    // Add required styles
    const mapStyle = document.createElement('style');
    mapStyle.textContent = `
      .sb-map-frame {
        position: relative;
        width: 100%;
        height: 500px;
        background: #f0f0f0;
      }
      .sb-map {
        width: 100%;
        height: 100%;
        background: #f0f0f0;
      }
      .sb-lock {
        position: absolute;
        top: 20px;
        right: 20px;
        z-index: 1;
        background: white;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      }
      .sb-lock.sb-active {
        background: #007bff;
        color: white;
      }
    `;
    document.head.appendChild(mapStyle);

    // Initialize map
    const initMap = async () => {
      if (!mapContainerRef.current) {
        console.error('Map container ref not available');
        return;
      }

      try {
        console.log('Starting map initialization...');
        const map = await mapboxInit(mapContainerRef.current);
        mapInstanceRef.current = map;
        console.log('Map initialization successful');
        
        if (mapLock) {
          map.scrollZoom.disable();
          map.dragPan.disable();
        }
      } catch (error) {
        console.error('Map initialization failed:', error);
        setMapError('Failed to load map. Please check your connection and try again.');
      }
    };

    initMap();

    // Cleanup
    return () => {
      if (mapInstanceRef.current) {
        mapInstanceRef.current.remove();
      }
      mapStyle.remove();
    };
  }, []);

  useEffect(() => {
    if (mapInstanceRef.current) {
      if (mapLock) {
        mapInstanceRef.current.scrollZoom.disable();
        mapInstanceRef.current.dragPan.disable();
      } else {
        mapInstanceRef.current.scrollZoom.enable();
        mapInstanceRef.current.dragPan.enable();
      }
    }
  }, [mapLock]);

  return (
    <div className="sb-map-frame">
      {mapError ? (
        <div style={{ 
          padding: '20px', 
          textAlign: 'center',
          position: 'absolute',
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          background: 'white',
          borderRadius: '8px',
          boxShadow: '0 2px 4px rgba(0,0,0,0.1)'
        }}>
          {mapError}
        </div>
      ) : (
        <>
          <div 
            ref={mapContainerRef}
            id="map" 
            className={`sb-map ${mapLock ? "sb-active" : ""}`} 
          />
          <div 
            className={`sb-lock ${mapLock ? "sb-active" : ""}`} 
            onClick={() => setMapLock(!mapLock)}
          >
            <i className={`fas ${mapLock ? "fa-unlock" : "fa-lock"}`} />
          </div>
        </>
      )}
    </div>
  );
};

export default ContactMapSection;