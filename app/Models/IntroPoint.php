<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IntroPoint extends Model
{
    use HasFactory;
    
    public $timestamps = false;

    protected $fillable = [
        "language_id", 
        'image',
        'title',
        'serial_number',
       ];



    public function language() {
        return $this->belongsTo('App\Models\Language');
    }
}
