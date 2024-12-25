import { NextResponse } from 'next/server';

   export function middleware(request) {
     const url = request.nextUrl.clone();
     
     // Cek apakah path adalah /admin
     if (url.pathname === '/admin') {
       url.hostname = 'admin.selera-rasa-sunda.id'; // Ganti hostname ke subdomain
       return NextResponse.redirect(url); // Redirect ke subdomain
     }

     return NextResponse.next(); // Lanjutkan permintaan jika bukan /admin
   }

   export const config = {
     matcher: '/admin', // Hanya jalankan middleware untuk /admin
   };