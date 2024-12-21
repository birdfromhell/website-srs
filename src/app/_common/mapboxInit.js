"use client";

import AppData from "@data/app.json";
import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

export const mapboxInit = (containerElement) => {
  return new Promise((resolve, reject) => {
    try {
      // Verify container element
      if (!containerElement) {
        throw new Error('Map container element is required');
      }

      // Log initialization
      console.log('Initializing map...');
      console.log('Container element:', containerElement);

      // Set access token
      mapboxgl.accessToken = AppData.settings.mapbox.AccessToken;

      // Create map instance
      const map = new mapboxgl.Map({
        container: containerElement,
        style: 'mapbox://styles/mapbox/streets-v12',
        center: [AppData.settings.mapbox.long, AppData.settings.mapbox.lat],
        zoom: AppData.settings.mapbox.zoom || 13,
        failIfMajorPerformanceCaveat: true
      });

      // Add load handler
      map.on('load', () => {
        console.log('Map loaded successfully');
        new mapboxgl.Marker()
          .setLngLat([AppData.settings.mapbox.long, AppData.settings.mapbox.lat])
          .addTo(map);
        resolve(map);
      });

      // Add error handler
      map.on('error', (e) => {
        console.error('Mapbox error:', e);
        reject(new Error('Map loading failed'));
      });

    } catch (error) {
      console.error('Mapbox initialization error:', error);
      reject(error);
    }
  });
};