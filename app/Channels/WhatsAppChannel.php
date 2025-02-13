<?php
namespace App\Channels;

use Illuminate\Notifications\Notification;
use GuzzleHttp\Client;

class WhatsAppChannel
{
    public function send($notifiable, Notification $notification)
    {
        $message = $notification->toWhatsApp($notifiable);

        $to = $notifiable->routeNotificationFor('WhatsApp');
        $apiKey = '1234567890'; // Replace with your actual API key
        $sender = '62888xxxx'; // Replace with your actual sender number
        $footer = 'Sent via mpwa';

        $client = new Client();
        $response = $client->post('https://wa.selera-rasa-sunda.id/send-message', [
            'json' => [
                'api_key' => $apiKey,
                'sender' => $sender,
                'number' => $to,
                'message' => $message->content,
                'footer' => $footer
            ]
        ]);

        return $response;
    }
}
