<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'phone',
        'father_name',
        'mother_name',
        'addres2',
        'addres1',
        'bg',
        'fb',
        'tw',
        'th',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
