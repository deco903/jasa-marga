<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class m_ruas extends Model
{
    use HasFactory;
    protected $table = 'ruas';
    protected $fillable = [
        'ruas',
        'km_awal',
        'km_akhir',
    ];
}
